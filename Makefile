all: README.md

README.md: guessinggame.sh
	@echo "guessinggame" > $@
	@date >> $@
	@wc -l $< | cut -d' ' -f1 >> $@
