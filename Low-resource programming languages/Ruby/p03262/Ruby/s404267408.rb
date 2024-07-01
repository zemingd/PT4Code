n, here = gets.split.map(&:to_i)
x = gets.split.map{|i| (i.to_i - here).abs }

d = x.inject{|a,b| a.gcd(b)}

puts d