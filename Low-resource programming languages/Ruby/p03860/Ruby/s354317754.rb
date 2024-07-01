w=gets.chomp
w=w.split(" ")
a=w[0].to_i
b=w[1].to_i
x=w[2].to_i
ans=b / x - (a - 1) / x
puts ans