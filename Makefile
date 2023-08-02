default: build

build:
	@rebar3 compile

test:
	@rebar3 as test ltest

.PHONY: test
