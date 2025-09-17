

all:
	@echo " "
	gcc -Wall -s main.c -o main
	#ld -wall -o  main  


clear:
	@echo " Clear... "
	rm -rf *.o
	
help: #
	@echo "  "
