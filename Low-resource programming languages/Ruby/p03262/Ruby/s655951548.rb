n, here = gets.split.map(&:to_i)
x = gets.split.map{|i| i.to_i - here }

d = x.inject{|a,b| a.gcd(b)}

puts d