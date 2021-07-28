all: dirs \
     c/qrcodegen-demo \
     c/qrcodegen-test \
     c/qrcodegen-worker \
     c/qrcodegen-when-testing \
     c/qrcodegen \
     h/qrcodegen

dirs:
	mkdir -p c h

c/qrcodegen-demo: ../c/qrcodegen-demo.c
	ln -sf ../$? $@
c/qrcodegen-test: ../c/qrcodegen-test.c
	ln -sf ../$? $@
c/qrcodegen-worker: ../c/qrcodegen-worker.c
	ln -sf ../$? $@
c/qrcodegen: ../c/qrcodegen.c
	ln -sf ../$? $@
c/qrcodegen-when-testing: ../c/qrcodegen.c
	ln -sf ../$? $@
h/qrcodegen: ../c/qrcodegen.h
	ln -sf ../$? $@
