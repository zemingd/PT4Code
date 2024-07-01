a, b = gets.strip.split(' ').map(&:to_i)
puts a + b if b % a == 0
puts b - a if b % a > 0
