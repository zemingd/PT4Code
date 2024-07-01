a, b = gets.split(" ")

a_str = ""
b.to_i.times do |i|
  a_str << a
end

b_str = ""
a.to_i.times do |i|
  b_str << b
end

puts a_str < b_str ? a_str : b_str