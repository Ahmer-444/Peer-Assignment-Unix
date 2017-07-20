all:README.md
README.md:
	echo '# Bash, Make, Git, and GitHub - Guessing Game' > README.md
	echo '**Date:** '$(shell date) >> README.md
	echo '**No. of Lines in guessiggame.sh:** ' $(shell wc -l guessinggame.sh | cut -d' ' -f1) >> README.md
clean:
	rm README.md ./*~

