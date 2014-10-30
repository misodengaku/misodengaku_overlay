# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit versionator

DESCRIPTION="Serial port logging utility"
HOMEPAGE="http://slsnif.sourceforge.net/"
SRC_URI="http://jaist.dl.sourceforge.net/project/slsnif/slsnif/slsnif-0.4.4/slsnif-0.4.4.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}

src_unpack() {
	unpack ${A}
	cd "${S}/${P}"
}

src_configure() {
	cd ${P}
	econf
}

src_compile() {
	cd ${P}
	./configure
	make
}

src_install() {
	dobin ${P}/src/slsnif
}
