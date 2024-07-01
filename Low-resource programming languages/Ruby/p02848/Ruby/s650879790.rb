N = gets.to_i
S = gets.chomp

0.upto(S.size - 1){|i|
  t = S[i].ord + N
  t -= 26 if t > 90
  printf("#{t.chr}")
}
printf("\n")
