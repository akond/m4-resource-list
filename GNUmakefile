M4 = $(firstword $(shell which gm4 m4))
RESCOMP = $(M4) -P resource-list.m4

.PHONY: tests
tests:
	for i in $(wildcard tests/*.resource); do $(RESCOMP) $$i | diff -w --strip-trailing-cr -c $$i.result -; done