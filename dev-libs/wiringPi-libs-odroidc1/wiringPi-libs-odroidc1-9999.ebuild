# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit eutils git-r3


DESCRIPTION="A 'wiring' like library for the odroid c1+"
HOMEPAGE="http://wiringpi.com/"
EGIT_REPO_URI="git://github.com/hardkernel/wiringPi.git"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~arm"
IUSE="+util"

RDEPEND=""
DEPEND="${RDEPEND}"
PDEPEND="util? ( dev-libs/wiringPi-util-odroidc1 )"

S="${WORKDIR}/${P}"

pkg_setup() {

	ewarn "If you use the FEATURES \"distcc\" and/or \"distcc-pump\""
	ewarn "please disable this FEATURES!"
	ewarn "The compiling of the libs wan't work with thes"
}

src_prepare() {
	MAKEDIRS="wiringPi devLib"
	
	epatch "${FILESDIR}/wiringPi_Makefile.patch"
	epatch "${FILESDIR}/devLib_Makefile.patch"
}

src_compile() {
	for d in ${MAKEDIRS}; do
		cd "${S}/${d}"
		einfo "Compiling $d"
		emake || die
	done
}

src_install() {
	for d in ${MAKEDIRS}; do
		cd "${S}/${d}"
		einfo "Installing $d"
		emake DESTDIR="${D}/usr/" PREFIX="" install || die
	done
}

