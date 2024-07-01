a, b = gets.split.map(&:to_i)
d = (a / b)
r = (a % b).round
f = (a / b).to_f
puts "#{d} #{r} #{f}"