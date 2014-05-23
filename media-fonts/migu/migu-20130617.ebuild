# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit font

DESCRIPTION="Migu Font "
HOMEPAGE="http://mix-mplus-ipa.sourceforge.jp/migu/"
SRC_URI="http://jaist.dl.sourceforge.jp/mix-mplus-ipa/59022/migu-1c-${PV}.zip http://jaist.dl.sourceforge.jp/mix-mplus-ipa/59022/migu-1m-${PV}.zip http://jaist.dl.sourceforge.jp/mix-mplus-ipa/59022/migu-1p-${PV}.zip http://jaist.dl.sourceforge.jp/mix-mplus-ipa/59022/migu-2m-${PV}.zip"

LICENSE="IPA Font License"
SLOT="0"
KEYWORDS="~arm amd64 x86 ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

FONT_SUFFIX="ttf"
FONT_CONF=( "${FILESDIR}/90-migu.conf" )

src_install() {
	FONT_S="${WORKDIR}/migu-1c-${PV}/" font_src_install
	FONT_S="${WORKDIR}/migu-1m-${PV}/" font_src_install
	FONT_S="${WORKDIR}/migu-1p-${PV}/" font_src_install
	FONT_S="${WORKDIR}/migu-2m-${PV}/" font_src_install
}
