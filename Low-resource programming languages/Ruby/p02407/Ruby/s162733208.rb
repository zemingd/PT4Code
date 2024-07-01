n =STDIN.gets.to_i
ar=STDIN.gets.split

(n-1).downto(0) {|i|
  printf("%d",ar[i])
  printf(" ") if i > 0
}
printf("\n")