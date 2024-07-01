n=gets.to_i
a=gets.chomp.split(' ').map(&:to_i)
puts a.inject{|i,j| i.gcd(j)}