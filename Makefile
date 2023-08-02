default: build

build:
	@rebar3 compile

.PHONY: test
test:
	@rebar3 as test ltest

hex-publish:
	@echo "\nPublishing to hex.pm ...\n"
	rm -rf doc
	mkdir doc
	cp priv/html/docs-redirect.html doc/index.html
	rebar3 hex publish
	rm -rf doc
