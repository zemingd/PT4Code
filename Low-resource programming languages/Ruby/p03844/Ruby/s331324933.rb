a,op,b=gets.split
a,b=[a,b].map(&:to_i)
p op=='+' ? a+b : a-b
