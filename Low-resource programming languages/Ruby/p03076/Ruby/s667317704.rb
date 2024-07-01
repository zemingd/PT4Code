a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

array = [a,b,c,d,e].sort_by{|i| (i - 1) % 10}
puts array[0] + array[1].ceil(-1) + array[2].ceil(-1) + array[3].ceil(-1) + array[4].ceil(-1)