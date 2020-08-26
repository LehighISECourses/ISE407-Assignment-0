a.out:
	gcc hello.c

clean:
	rm a.out

test: a.out
	bash test.sh
