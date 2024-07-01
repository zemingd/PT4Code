n=gets.to_i
a=gets.split.map(&:to_i)
g=a.pop
a.each{|v|g=v.gcd g}
puts g