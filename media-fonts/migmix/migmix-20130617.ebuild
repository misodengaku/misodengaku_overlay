# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit font

DESCRIPTION="MigMix Font"
HOMEPAGE="http://mix-mplus-ipa.sourceforge.jp/migu/"
SRC_URI="http://jaist.dl.sourceforge.jp/mix-mplus-ipa/59021/migmix-1m-${PV}.zip http://jaist.dl.sourceforge.jp/mix-mplus-ipa/59021/migmix-1p-${PV}.zip http://jaist.dl.sourceforge.jp/mix-mplus-ipa/59021/migmix-2m-${PV}.zip http://jaist.dl.sourceforge.jp/mix-mplus-ipa/59021/migmix-2p-${PV}.zip"

LICENSE="IPA Font License"
SLOT="0"
KEYWORDS="~arm amd64 x86 ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

FONT_SUFFIX="ttf"
FONT_CONF=( "${FILESDIR}/90-migmix.conf" )

src_install() {
	FONT_S="${WORKDIR}/migmix-1p-${PV}/" font_src_install
	FONT_S="${WORKDIR}/migmix-1m-${PV}/" font_src_install
	FONT_S="${WORKDIR}/migmix-2p-${PV}/" font_src_install
	FONT_S="${WORKDIR}/migmix-2m-${PV}/" font_src_install
}
