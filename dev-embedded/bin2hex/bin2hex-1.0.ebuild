# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

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
