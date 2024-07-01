a, b = gets.split.map(&:to_i)

d = a / b
r = a % b
f = a.to_f / b

puts "#{d} #{r} " + sprintf("%.5f", f)