
.PHONY: all
all:
	$(MAKE) -C lib/github.com/diku-dk/sml-uref all

.PHONY: test
test:
	$(MAKE) -C lib/github.com/diku-dk/sml-uref test

.PHONY: clean
clean:
	$(MAKE) -C lib/github.com/diku-dk/sml-uref clean
	rm -rf MLB *~ .*~
