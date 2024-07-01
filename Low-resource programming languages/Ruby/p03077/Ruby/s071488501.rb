n = gets.chomp.to_f
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
arr = [a,b,c,d,e]
city = 0
neck = a
arr.each_with_index{|i, ind|
  if neck > i
    city = ind
    neck = i
  end
}
city = city.to_f
puts (city + 4 - city + (n / neck).ceil).round
