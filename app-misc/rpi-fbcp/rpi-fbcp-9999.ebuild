# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

inherit eutils git-r3 cmake-utils flag-o-matic


DESCRIPTION="Raspberry Pi utility. Used for mirror primary framebuffer to secondary framebuffer."
HOMEPAGE="https://github.com/tasanakorn/rpi-fbcp"
EGIT_REPO_URI="git://github.com/tasanakorn/rpi-fbcp.git"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~arm"
IUSE=""

RDEPEND="media-libs/raspberrypi-userland"
DEPEND="${RDEPEND}
	dev-util/cmake"

if [ -d /opt/vc ]; then
	append-flags "-I/opt/vc/include/interface/vcos/pthreads -I/opt/vc/include/interface/vmcs_host/linux"
else
	append-flags "-I/usr/include/interface/vcos/pthreads -I/usr/include/interface/vmcs_host/linux"
fi

src_install() {
        into /usr
        dobin ${WORKDIR}/${PF}_build/fbcp
}


