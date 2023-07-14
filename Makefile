.PHONY: s dev bundle test check correct

s:
	@rails s -b 0.0.0.0 -p 3000

dev:
	@./bin/dev

bundle:
	@bundle install

test:
	@rails test

check:
	@rubocop

correct:
	@rubocop --auto-correct
