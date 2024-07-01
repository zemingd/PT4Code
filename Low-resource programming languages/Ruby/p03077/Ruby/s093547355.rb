n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

#全部一番輸送力が低い量だけ運べば良い
m = [a,b,c,d,e].min
time_to2 = (n + m - 1) / m

puts time_to2 + 4