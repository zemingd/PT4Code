a, b = gets.chomp.split.map(&:to_i)
puts "a < b"  if a < b
puts "a > b"  if a > b
puts "a == b" if a == b