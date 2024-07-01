a, b = gets.split.map(&:to_i)
d = (a / b)
r = (a % b)
f = (a.float / b.float)
puts "#{d} #{r} #{f}"