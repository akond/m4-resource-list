COMP = $(M4) ../resource-list.m4
M4 = m4 -P

javascript.resource.php: javascript.resource
	$(M4) -D FILES="$(strip $(shell $(COMP) $<))" compiled-resource.m4 > $@
