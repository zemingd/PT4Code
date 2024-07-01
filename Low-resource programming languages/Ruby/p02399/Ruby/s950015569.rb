a,b = gets.split.map(&:to_i)
d = a / b
r = a % b
puts "#{d} #{r} #{sprintf("%.5f",a.to_f/b.to_f)}"
