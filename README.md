This draft describes an extension to the NFSv42 protocol.

In particular, it extends the use of the delegation stateid.

http://www.ietf.org/html.charters/nfsv4-charter.html
http://www.ietf.org/mail-archive/web/nfsv4/index.html

NOTE: The drafts contained here may change after it is
posted to the IETF site. The ITEF site is always the
definitive authority on content.

Old notes to build:

To compile the XML files into text files:

1. Install xml2rfc 
   Check with http://xml.resource.org/, but basically:

#
# Install xml2rfc
#
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip install xml2rfc

   These instructions have been tested with version 2. The
   documents no longer build with the version 1.36.

2. Build

   > make

New notes to build:

1. Bump the VERS in Makefile

2. Build

   > make
