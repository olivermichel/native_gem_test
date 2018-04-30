
NAME=example
VERSION=0.1

GEM=gem
RUBY=ruby

$(NAME)-$(VERSION).gem: $(NAME).gemspec ext/$(NAME)/$(NAME).bundle
	$(GEM) build $<

ext/$(NAME)/$(NAME).bundle: ext/$(NAME)/Makefile
	$(MAKE) -C ext/$(NAME)

ext/$(NAME)/Makefile: ext/$(NAME)/extconf.rb ext/$(NAME)/example.c
	$(RUBY) -C ext/$(NAME) $(<F)

clean:
	$(RM) $(NAME)-$(VERSION).gem
	$(RM) ext/$(NAME)/Makefile
	$(RM) ext/$(NAME)/$(NAME).bundle
	$(RM) ext/$(NAME)/$(NAME).o

.PHONY: clean
