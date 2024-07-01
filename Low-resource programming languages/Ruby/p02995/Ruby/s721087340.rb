# スペース区切りの整数の入力
a,b,c,d=gets.chomp.split(" ").map(&:to_i);

duprecate = (c * d) / c.gcd(d)
#puts duprecate

#puts (b - a + 1)
##puts (b / c - (a - 1) / c)
#puts (b / d - (a -1 ) / d)
#puts  (b / duprecate - a / duprecate)

count = (b - a + 1) - (b / c - (a - 1) / c) - (b / d - (a - 1) / d) + (b / duprecate - (a - 1) / duprecate)



print("#{count}\n")
