a, b = gets.split.map(&:to_i)

d = a / b
r = a % b
f = (a.to_f / b.to_f).round(6)
puts "#{d} #{r} #{f}"