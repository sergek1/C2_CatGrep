
all: s21_cat s21_grep

#s21grep: grep/s21_grep.c
#	gcc grep/s21_grep.c -o grep/s21_grep
#	./grep/s21_grep -lo textbook txt/text_1.txt txt/text_2.txt

s21cat: cat/s21_cat.c
	gcc cat/s21_cat.c -o cat/s21_cat
	./cat/s21_cat -bensvt txt/text_1.txt txt/text_2.txt

s21_cat: cat/s21_cat.c
	gcc cat/s21_cat.c -o cat/s21_cat -Wall -Werror -Wextra
s21_grep: grep/s21_grep.c
	gcc grep/s21_grep.c -o grep/s21_grep -Wall -Werror -Wextra

s21_test: test/test.c
	gcc test/test.c -o test/test

clean:
	rm -rf cat/s21_cat grep/s21_grep
	rm -rf cat/test_cat/*.txt
	rm -rf cat/test_result/*.txt
	rm -rf grep/test_grep/*.txt
	rm -rf grep/test_result/*.txt
	rm -rf test/test

#linters:
#	python3 ../materials/linters/cpplint.py --extensions=c cat/s21_cat.c
#	python3 ../materials/linters/cpplint.py --extensions=c grep/s21_grep.c
#cppcheck:
#	cppcheck cat/s21_cat.c
#	cppcheck grep/s21_grep.c
#leaks:
#	CK_FORK=no leaks -atExit -- ./cat/s21_cat -bensvt txt/text_1.txt txt/text_2.txt
#	CK_FORK=no leaks -atExit -- ./grep/s21_grep -e textbook txt/text_1.txt
