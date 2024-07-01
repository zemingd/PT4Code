a, b = gets.chomp.split().map(&:to_i)
ary = [a + b, a -b, a * b].sort
puts ary[2]