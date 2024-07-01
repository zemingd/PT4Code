inputs = gets.split(' ').map(&:to_i)
a = inputs.first
b = inputs.last
puts "#{a / b} #{a % b} #{a.to_f / b.to_f}"