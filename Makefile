# Copyright (C) The IETF Trust (2019)
#

YEAR=`date +%Y`
MONTH=`date +%B`
DAY=`date +%d`
PREVVERS=01
VERS=02

BASEDOC=draft-ietf-nfsv4-delstid
DOC_PREFIX=delstid

all: $(BASEDOC)-$(VERS).xml

$(BASEDOC)-$(VERS).xml: $(BASEDOC).xml
	sed -e s/VERSIONVAR/${VERS}/g < $(BASEDOC).xml > $@
