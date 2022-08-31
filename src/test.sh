#!/bin/bash
# Copyright 2018 Foobar, All rights reserved
CAT="cat"
TXT="txt"
TCTR="cat/test_result"
TCT="cat/test_cat"


#__________________________TEST_1__________________________________
./$CAT/s21_cat $TXT/text_1.txt > $TCT/out1.txt
./$CAT/s21_cat -b $TXT/text_2.txt > $TCT/out2.txt
./$CAT/s21_cat -n $TXT/text_3.txt > $TCT/out3.txt
./$CAT/s21_cat -s $TXT/text_1.txt > $TCT/out4.txt
./$CAT/s21_cat -t $TXT/text_1.txt > $TCT/out5.txt
./$CAT/s21_cat -v $TXT/text_ascii_255.txt > $TCT/out6.txt
./$CAT/s21_cat -E $TXT/text_1.txt > $TCT/out7.txt
./$CAT/s21_cat -T $TXT/text_1.txt > $TCT/out8.txt
./$CAT/s21_cat --number-nonblank $TXT/text_1.txt > $TCT/out10.txt
./$CAT/s21_cat --number $TXT/text_1.txt > $TCT/out11.txt
./$CAT/s21_cat --squeeze-blank $TXT/text_1.txt > $TCT/out12.txt
./$CAT/s21_cat -e $TXT/text_1.txt > $TCT/out13.txt

#__________________________TEST_2__________________________________
./$CAT/s21_cat -bn $TXT/text_1.txt > $TCT/out14.txt
./$CAT/s21_cat -bs $TXT/text_1.txt > $TCT/out15.txt
./$CAT/s21_cat -bt $TXT/text_1.txt > $TCT/out16.txt
./$CAT/s21_cat -bv $TXT/text_1.txt > $TCT/out17.txt
./$CAT/s21_cat -be $TXT/text_1.txt > $TCT/out18.txt
./$CAT/s21_cat -ns $TXT/text_1.txt > $TCT/out19.txt
./$CAT/s21_cat -nt $TXT/text_1.txt > $TCT/out20.txt
./$CAT/s21_cat -nv $TXT/text_1.txt > $TCT/out21.txt
./$CAT/s21_cat -ne $TXT/text_1.txt > $TCT/out22.txt
./$CAT/s21_cat -st $TXT/text_1.txt > $TCT/out23.txt
./$CAT/s21_cat -sv $TXT/text_1.txt > $TCT/out24.txt
./$CAT/s21_cat -se $TXT/text_1.txt > $TCT/out25.txt
./$CAT/s21_cat -tv $TXT/text_1.txt > $TCT/out26.txt
./$CAT/s21_cat -te $TXT/text_1.txt > $TCT/out27.txt

#__________________________TEST_3__________________________________
./$CAT/s21_cat -bnest $TXT/text_1.txt > $TCT/out28.txt
./$CAT/s21_cat -bbbb $TXT/text_1.txt > $TCT/out29.txt
./$CAT/s21_cat -nnnn $TXT/text_1.txt > $TCT/out30.txt
./$CAT/s21_cat -eeee $TXT/text_1.txt > $TCT/out31.txt
./$CAT/s21_cat -sss $TXT/text_1.txt > $TCT/out32.txt
./$CAT/s21_cat -ttt $TXT/text_1.txt > $TCT/out33.txt
./$CAT/s21_cat -TTT $TXT/text_1.txt > $TCT/out34.txt
./$CAT/s21_cat -EEEE $TXT/text_1.txt > $TCT/out35.txt
./$CAT/s21_cat --number-nonblank --number-nonblank --number-nonblank --number-nonblank $TXT/text_1.txt > $TCT/out37.txt
./$CAT/s21_cat --number --number $TXT/text_1.txt > $TCT/out.txt
./$CAT/s21_cat  --squeeze-blank --squeeze-blank --squeeze-blank $TXT/text_1.txt > $TCT/out38.txt

#__________________________TEST_4__________________________________
./$CAT/s21_cat $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out39.txt
./$CAT/s21_cat -b $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out40.txt
./$CAT/s21_cat -n $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out41.txt
./$CAT/s21_cat -s $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out42.txt
./$CAT/s21_cat -t $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out43.txt
./$CAT/s21_cat -v $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out44.txt
./$CAT/s21_cat -E $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out45.txt
./$CAT/s21_cat -T $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out46.txt
./$CAT/s21_cat --number-nonblank $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out48.txt
./$CAT/s21_cat --number $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out49.txt
./$CAT/s21_cat --squeeze-blank $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out50.txt
./$CAT/s21_cat -e $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out51.txt

#__________________________TEST_5__________________________________
./$CAT/s21_cat -bnest $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out52.txt
./$CAT/s21_cat -bbbb $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out53.txt
./$CAT/s21_cat -nnnn $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out54.txt
./$CAT/s21_cat -eeee $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out55.txt
./$CAT/s21_cat -sss $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out56.txt
./$CAT/s21_cat -ttt $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out57.txt
./$CAT/s21_cat -TTT $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out58.txt
./$CAT/s21_cat -EEEE $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out59.txt
./$CAT/s21_cat --number-nonblank --number-nonblank --number-nonblank --number-nonblank $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out61.txt
./$CAT/s21_cat --number --number $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out62.txt
./$CAT/s21_cat  --squeeze-blank --squeeze-blank --squeeze-blank $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out63.txt

#__________________________TEST_6__________________________________
./$CAT/s21_cat -b $TXT/text_1.txt --number-nonblank $TXT/text_2.txt --number-nonblank $TXT/text_3.txt -e $TXT/text_4.txt -n $TXT/text_ascii_255.txt > $TCT/out64.txt
./$CAT/s21_cat -bbbb $TXT/text_1.txt $TXT/text_2.txt --squeeze-blank $TXT/text_3.txt $TXT/text_4.txt --number $TXT/text_ascii_255.txt > $TCT/out65.txt
./$CAT/s21_cat -nnnn $TXT/text_1.txt -E $TXT/text_2.txt $TXT/text_3.txt -T $TXT/text_4.txt -s $TXT/text_ascii_255.txt --squeeze-blank > $TCT/out66.txt


#__________________________TEST_11__________________________________
cat $TXT/text_1.txt > $TCT/out01.txt
cat -b $TXT/text_2.txt > $TCT/out02.txt
cat -n $TXT/text_3.txt > $TCT/out03.txt
cat -s $TXT/text_1.txt > $TCT/out04.txt
cat -t $TXT/text_1.txt > $TCT/out05.txt
cat -v $TXT/text_ascii_255.txt > $TCT/out06.txt
cat -e $TXT/text_1.txt > $TCT/out013.txt
#LINUX______________________________________________
cat -E $TXT/text_1.txt > $TCT/out07.txt
cat -T $TXT/text_1.txt > $TCT/out08.txt
cat --number-nonblank $TXT/text_1.txt > $TCT/out010.txt
cat --number $TXT/text_1.txt > $TCT/out011.txt
cat --squeeze-blank $TXT/text_1.txt > $TCT/out012.txt
#LINUX______________________________________________

#__________________________TEST_22__________________________________
cat -bn $TXT/text_1.txt > $TCT/out014.txt
cat -bs $TXT/text_1.txt > $TCT/out015.txt
cat -bt $TXT/text_1.txt > $TCT/out016.txt
cat -bv $TXT/text_1.txt > $TCT/out017.txt
cat -be $TXT/text_1.txt > $TCT/out018.txt
cat -ns $TXT/text_1.txt > $TCT/out019.txt
cat -nt $TXT/text_1.txt > $TCT/out020.txt
cat -nv $TXT/text_1.txt > $TCT/out021.txt
cat -ne $TXT/text_1.txt > $TCT/out022.txt
cat -st $TXT/text_1.txt > $TCT/out023.txt
cat -sv $TXT/text_1.txt > $TCT/out024.txt
cat -se $TXT/text_1.txt > $TCT/out025.txt
cat -tv $TXT/text_1.txt > $TCT/out026.txt
cat -te $TXT/text_1.txt > $TCT/out027.txt


#__________________________TEST_33__________________________________
cat -bnest $TXT/text_1.txt > $TCT/out028.txt
cat -bbbb $TXT/text_1.txt > $TCT/out029.txt
cat -nnnn $TXT/text_1.txt > $TCT/out030.txt
cat -eeee $TXT/text_1.txt > $TCT/out031.txt
cat -sss $TXT/text_1.txt > $TCT/out032.txt
cat -ttt $TXT/text_1.txt > $TCT/out033.txt
#LINUX______________________________________________
cat -TTT $TXT/text_1.txt > $TCT/out034.txt
cat -EEEE $TXT/text_1.txt > $TCT/out035.txt
cat --number-nonblank --number-nonblank --number-nonblank --number-nonblank $TXT/text_1.txt > $TCT/out037.txt
cat --number --number $TXT/text_1.txt > $TCT/out0.txt
cat --squeeze-blank --squeeze-blank --squeeze-blank $TXT/text_1.txt > $TCT/out038.txt
#LINUX______________________________________________


#__________________________TEST_44__________________________________
cat $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out039.txt
cat -b $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out040.txt
cat -n $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out041.txt
cat -s $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out042.txt
cat -t $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out043.txt
cat -v $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out044.txt
#LINUX______________________________________________
cat -E $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out045.txt
cat -T $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out046.txt
cat --number-nonblank $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out048.txt
cat --number $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out049.txt
cat --squeeze-blank $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out050.txt
#LINUX______________________________________________
cat -e $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out051.txt

#__________________________TEST_55__________________________________
cat -bnest $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out052.txt
cat -bbbb $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out053.txt
cat -nnnn $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out054.txt
cat -eeee $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out055.txt
cat -sss $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out056.txt
cat -ttt $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out057.txt
#LINUX______________________________________________
cat -TTT $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out058.txt
cat -EEEE $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out059.txt
cat --number-nonblank --number-nonblank --number-nonblank --number-nonblank $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out061.txt
cat --number --number $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out062.txt
cat --squeeze-blank --squeeze-blank --squeeze-blank $TXT/text_1.txt $TXT/text_2.txt $TXT/text_3.txt $TXT/text_4.txt $TXT/text_ascii_255.txt > $TCT/out063.txt
#LINUX______________________________________________

#__________________________TEST_66__________________________________
cat -b $TXT/text_1.txt --number-nonblank $TXT/text_2.txt --number-nonblank $TXT/text_3.txt -e $TXT/text_4.txt -n $TXT/text_ascii_255.txt > $TCT/out064.txt
cat -bbbb $TXT/text_1.txt $TXT/text_2.txt --squeeze-blank $TXT/text_3.txt $TXT/text_4.txt --number $TXT/text_ascii_255.txt > $TCT/out065.txt
cat -nnnn $TXT/text_1.txt -E $TXT/text_2.txt $TXT/text_3.txt -T $TXT/text_4.txt -s $TXT/text_ascii_255.txt --squeeze-blank > $TCT/out066.txt


./test/test $TXT/name_out.txt > $TCTR/result.txt



#GREP_____GREP____GREP_____GREP____GREP_____GREP____GREP_____GREP____GREP_____GREP____GREP
GRP="grep"
GRP_T="grep/test_grep"
#__________________________TEST_1__________________________________
./$GRP/s21_grep textbook $TXT/text_1.txt > $GRP_T/out1.txt
./$GRP/s21_grep -v textbook $TXT/text_1.txt > $GRP_T/out2.txt
./$GRP/s21_grep -i textbook $TXT/text_1.txt > $GRP_T/out3.txt
./$GRP/s21_grep -c textbook $TXT/text_1.txt > $GRP_T/out4.txt
./$GRP/s21_grep -l textbook $TXT/text_1.txt $TXT/text_2.txt> $GRP_T/out5.txt
./$GRP/s21_grep -n textbook $TXT/text_1.txt > $GRP_T/out6.txt
./$GRP/s21_grep -o textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out7.txt
./$GRP/s21_grep -f txt/regex_file.txt $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out9.txt
./$GRP/s21_grep -o textbook $TXT/text_1.txt > $GRP_T/out10.txt
./$GRP/s21_grep -e textbook $TXT/text_1.txt > $GRP_T/out11.txt

#__________________________TEST_2__________________________________
./$GRP/s21_grep -vi textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out12.txt
./$GRP/s21_grep -vc textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out13.txt
./$GRP/s21_grep -vl textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out14.txt
./$GRP/s21_grep -vn textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out15.txt
./$GRP/s21_grep -v textbook  $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out16.txt
./$GRP/s21_grep -v -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out17.txt
./$GRP/s21_grep -ic textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out18.txt
./$GRP/s21_grep -il textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out19.txt
./$GRP/s21_grep -in textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out20.txt
./$GRP/s21_grep -io textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out21.txt
./$GRP/s21_grep -i -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out22.txt
./$GRP/s21_grep -cn textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out24.txt
./$GRP/s21_grep -co textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out25.txt
./$GRP/s21_grep -c -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out26.txt
./$GRP/s21_grep -ln textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out27.txt
./$GRP/s21_grep -lo textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out28.txt
./$GRP/s21_grep -l -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out29.txt
./$GRP/s21_grep -o -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out30.txt
./$GRP/s21_grep -no cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out31.txt

#__________________________TEST_11__________________________________
grep textbook $TXT/text_1.txt > $GRP_T/out01.txt
grep -v textbook $TXT/text_1.txt > $GRP_T/out02.txt
grep -i textbook $TXT/text_1.txt > $GRP_T/out03.txt
grep -c textbook $TXT/text_1.txt > $GRP_T/out04.txt
grep -l textbook $TXT/text_1.txt $TXT/text_2.txt> $GRP_T/out05.txt
grep -n textbook $TXT/text_1.txt > $GRP_T/out06.txt
grep -o textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out07.txt
grep -f txt/regex_file.txt $TXT/text_1.txt $TXT/text_2.txt> $GRP_T/out09.txt
grep -o textbook $TXT/text_1.txt > $GRP_T/out010.txt
grep -e textbook $TXT/text_1.txt > $GRP_T/out011.txt

#__________________________TEST_22__________________________________
grep -vi textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out012.txt
grep -vc textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out013.txt
grep -vl textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out014.txt
grep -vn textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out015.txt
grep -v textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out016.txt
grep -v -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out017.txt
grep -ic textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out018.txt
grep -il textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out019.txt
grep -in textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out020.txt
grep -io textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out021.txt
grep -i -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out022.txt
grep -cn textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out024.txt
grep -co textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out025.txt
grep -c -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out026.txt
grep -ln textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out027.txt
grep -lo textbook $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out028.txt
grep -l -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out029.txt
grep -o -e cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out030.txt
grep -no cat    $TXT/text_1.txt $TXT/text_2.txt > $GRP_T/out031.txt


./test/test $TXT/name_out_grep.txt > grep/test_result/result.txt
