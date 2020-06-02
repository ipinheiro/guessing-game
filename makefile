all: README.md

README.md:
	echo "# Unix Workbench Guessing Game Project" > README.md
	echo " " >> README.md
	echo "This makefile ran on $(shell date +"%d-%b-%Y %T")" >> README.md
	echo " " >> README.md
	echo "The script has $(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines." >> README.md

clean:
	rm README.md