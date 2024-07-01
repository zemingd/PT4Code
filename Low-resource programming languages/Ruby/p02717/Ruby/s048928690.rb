# スペース区切りの整数の入力
a,b,c=gets.chomp.split(" ").map(&:to_i);

tmp1 = a
a = b
b = tmp1

tmp2 = a
a = c
c = tmp2

print(a," ",b," ",c,"\n")