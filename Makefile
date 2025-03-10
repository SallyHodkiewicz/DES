  Variables
APP=desbox

#Special rules and targets
.PHONY: all clean help genkey

#Rules and targets
all: $(APP)

$(APP):
	@cd src && $(MAKE)
	@cp -f src/$(APP) .

genkey:
	@cd src && $(MAKE) genkey
	@cp -f src/genkey .

clean:
	@cd src && $(MAKE) clean
	@rm -f $(APP) genkey


help :
	@echo -e "Usage :"
	@echo -e "  make all		build the software"
	@echo -e "  make genkey		build the key generator"
	@echo -e "  make clean		remove all files generated by make"
	@echo -e "  make help		display this help"
 