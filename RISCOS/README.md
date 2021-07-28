# QRCodeGen for RISC OS

Simple library and tool able to create QR Codes for RISC OS.
The tool creates monochrome RISC OS sprites based on the
QR code data supplied by the library.

## Building

Building the library:

    amu -f MakefileLib export

Building and running the test code (internal tests to check that it's working properly):

    amu -f MakefileTest BUILD32=1
    /aif32.qrcodegen-test

Building and running the demo code (displays a number of different forms of QR code):

    amu -f MakefileDemo BUILD32=1
    /aif32

Building the RISC OS tool:

    amu -f MakefileTool BUILD32=1

Building through the RISC OS build service (and show the list of files built):

    zip -9r /tmp/source-archive.zip c h Makefile* VersionNum .robuild.yaml
    riscos-build-online -i /tmp/source-archive.zip -o /tmp/built
    unzip -l /tmp/built

## Tool usage

Syntax: `*QRCodeGen <options> [<text>]`

Options:

* `-t <text>`: Text string to encode, in UTF-8
* `-e <error>`: Error correction (0: low, 3: high, default: 2)
* `-m <mask>`: Mask type (0-7, or 'auto', default 'auto')
* `-z <size>`: Minimum size to use (1-40, default 1)
* `-s <sprite>`: Sprite file to write to (default is text)

Example to display the QR code to the screen:

    *QRCodeGen "Hello world"

Example to save a sprite file:

    *QRCodeGen -s sprite "Hello world"
