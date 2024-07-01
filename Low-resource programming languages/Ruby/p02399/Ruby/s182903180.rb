a, b = gets.split.map(&:to_i)
d = (a / b)
r = (a % b)
f = sprintf("%10.10f", (a.to_f / b))
puts "#{d} #{r} #{f}"