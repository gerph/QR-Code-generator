This is a RISC OS port of a QR code generator. It makes bitmaps in the form of sprites in the tool.
The tool source is implemented in c/qrcodegen-tool. The library is in the other files, see h/qrcodegen
for details.
I would like you to design a module called MakeQRCode which has two interfaces:

* A simple interface where you give it a string and some of the parameters for the QR code, and it gives you back a sprite in memory.
* A more complex interface which allows more control over the conversion to create either a bitmap in memory, or a sprite.

If there is other interface that could be exposed by the module, or choices, ask me.

