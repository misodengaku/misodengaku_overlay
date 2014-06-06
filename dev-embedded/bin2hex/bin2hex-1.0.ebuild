# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-embedded/lpc21isp/lpc21isp-1.85.ebuild,v 1.1 2013/04/23 19:53:22 slis Exp $

EAPI=5

inherit versionator

#MY_PN="${PN}_$(delete_all_version_separators)"

DESCRIPTION="Binary to Intel-hex converter"
HOMEPAGE="http://www.headcrashers.org/comp/programs/bin2hex.html"
SRC_URI="http://www.headcrashers.org/comp/programs/bin2hex.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}

src_unpack() {
	unpack ${A}
	cd "${S}/${PN}"
	epatch "${FILESDIR}/${PV}/bin2hex.patch"
}

src_compile() {
	cd ${PN}
	make
}

src_install() {
	dobin ${PN}/bin2hex
}
