a, b = gets.chomp.split.map(&:to_i)

a_str = a * b.to_i
b_str = b * a.to_i

puts a_str <= b_str ? a_str : b_str