a,b = gets.split.map(&:to_i)
d = a.div(b)
r = a%b
f = (a.to_f/b).round(6)
puts "#{d} #{r} #{f}"
