# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

ETYPE="sources"
K_DEFCONFIG="odroidc_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"

inherit kernel-2 git-r3 linux-info

detect_version
detect_arch

EGIT_REPO_URI="https://github.com/hardkernel/linux.git"
EGIT_BRANCH="odroidc-$(ver_cut 1-2).y"
EGIT_CHECKOUT_DIR="$S"

DESCRIPTION="Linux source for Odroid devices"
HOMEPAGE="https://github.com/hardkernel/linux"

KEYWORDS="~arm"

RDEPEND="
	app-arch/lzop
	|| ( dev-embedded/u-boot-tools-odroidc1 dev-embedded/u-boot-tools )
	sys-devel/bc
	"

src_unpack()
{
	git-r3_src_unpack
	unpack_set_extraversion
}

