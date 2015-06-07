# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit git-2

DESCRIPTION="car command"
HOMEPAGE="https://github.com/misodengaku/car"
SRC_URI=""
EGIT_PROJECT='car'
EGIT_REPO_URI="https://github.com/misodengaku/car.git"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"

RDEPEND="dev-lang/go"

src_prepare() {
	make
}

src_install() {
	insinto /usr/bin
	dobin car
}
