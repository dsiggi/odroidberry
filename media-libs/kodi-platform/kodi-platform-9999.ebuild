# Copyright 2015 Daniel 'herrnst' Scheller, Team Kodi
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EGIT_REPO_URI="https://github.com/xbmc/kodi-platform.git"
EGIT_BRANCH="master"

inherit git-r3 cmake-utils

DESCRIPTION="Kodi platform support library"
HOMEPAGE="http://kodi.tv"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	|| ( media-tv/kodi media-tv/kodi-rpi media-tv/kodi-odroidc1 )
	dev-libs/libplatform
	dev-libs/tinyxml
	"

RDEPEND="
	dev-libs/tinyxml
	"
