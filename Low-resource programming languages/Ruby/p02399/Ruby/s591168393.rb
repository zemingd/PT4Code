a, b = gets.split.map &:to_i
d = a / b
r = a % b
f = a / b
puts "#{d} #{r} #{f.to_f}.round(6)"