# Copyright (C) The IETF Trust (2019)
#

YEAR=`date +%Y`
MONTH=`date +%B`
DAY=`date +%d`
DS_VERS=03
WCC_VERS=01

DS_BASEDOC=draft-ietf-nfsv4-delstid

WCC_BASEDOC=draft-haynes-nfsv4-layoutwcc

all: $(DS_BASEDOC)-$(DS_VERS).xml $(WCC_BASEDOC)-$(WCC_VERS).xml

$(DS_BASEDOC)-$(DS_VERS).xml: $(DS_BASEDOC).xml
	sed -e s/VERSIONVAR/${DS_VERS}/g -e s/DAYVAR/${DAY}/g -e s/MONTHVAR/${MONTH}/g -e s/YEARVAR/${YEAR}/g < $(DS_BASEDOC).xml > $@

$(WCC_BASEDOC)-$(WCC_VERS).xml: $(WCC_BASEDOC).xml
	sed -e s/VERSIONVAR/${WCC_VERS}/g -e s/DAYVAR/${DAY}/g -e s/MONTHVAR/${MONTH}/g -e s/YEARVAR/${YEAR}/g < $(WCC_BASEDOC).xml > $@
