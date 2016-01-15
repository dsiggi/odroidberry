# Copyright 2015 Daniel 'herrnst' Scheller, Team Kodi
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EGIT_REPO_URI="https://github.com/kodi-pvr/pvr.iptvsimple.git"

inherit git-r3 cmake-utils kodi-addon

DESCRIPTION="Kodi's IPTVSimple client addon"
HOMEPAGE="http://kodi.tv"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~arm"
IUSE=""

DEPEND="
	=media-tv/kodi-16*
	media-libs/kodiplatform
	sys-libs/zlib
	"

RDEPEND="
	dev-libs/libplatform
	media-libs/kodiplatform
	sys-libs/zlib
	"