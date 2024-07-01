inputs = gets.split.map(&:to_i)
a = inputs.first
b = inputs.last
puts "#{a * b} #{2 * (a + b)}"