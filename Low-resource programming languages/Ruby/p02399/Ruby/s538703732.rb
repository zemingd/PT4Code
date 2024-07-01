
a,b = *STDIN.gets.split(" ").map(&:to_i)


c = a / b
d = a%b
e = Float(a)/b
puts "#{c} #{d} #{ sprintf("%.6f", e) }"

