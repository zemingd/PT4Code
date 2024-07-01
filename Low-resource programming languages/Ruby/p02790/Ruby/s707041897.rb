a, b = gets.chop.split.map(&:to_i)

a_string = a.to_s
c = a_string * b

b_string = b.to_s
d = b_string * a

array = []
array << c
array << d
puts array.map(&:to_i).min