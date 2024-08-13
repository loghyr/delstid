# Copyright (C) The IETF Trust (2019)
#

YEAR=`date +%Y`
MONTH=`date +%B`
DAY=`date +%d`
VERS=06

BASEDOC=draft-ietf-nfsv4-delstid

all: $(BASEDOC)-$(VERS).xml

$(BASEDOC)-$(VERS).xml: $(BASEDOC).xml
	sed -e s/VERSIONVAR/${VERS}/g -e s/DAYVAR/${DAY}/g -e s/MONTHVAR/${MONTH}/g -e s/YEARVAR/${YEAR}/g < $(BASEDOC).xml > $@
