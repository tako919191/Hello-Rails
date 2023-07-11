.PHONY: s bundle test rubo
s:
	@rails s -b 0.0.0.0 -p 3000

bundle:
	@bundle install

test:
	@rails test

check:
	@rubocop

correct:
	@rubocop --auto-correct
