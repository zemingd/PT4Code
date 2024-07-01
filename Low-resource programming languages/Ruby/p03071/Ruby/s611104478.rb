a, b = gets.split.map!{|i| i.to_i}
total = []
a_2 = a * 2 - 1
total << a_2
a_b = a + b
total << a_b
b_2 = b * 2 - 1
total << b_2
puts total.max