help:
	egrep "^[a-z]+:" Makefile | gsed "s/://" | sort

.PHONY:	build clean

build:
	./build.sh

score:
	./score.sh > score.md
	pandoc score.md > score.html

cello:
	pandoc cello.md > cello.html

flute:
	pandoc flute.md > flute.html

all:
	./all.sh > all.md
	pandoc all.md > all.html

clean:
	rm -rvf {all,score}.{md,html}
	rm -rvf {cello,flute}.{html}
	rm -rvf build

publish:
	mv -v build/*.svg svg
	mv -v build/*.png png
	mv -v build/*.midi midi
