a, op, b = gets.split(&:chomp)
eval("puts a.to_i #{op} b.to_i")