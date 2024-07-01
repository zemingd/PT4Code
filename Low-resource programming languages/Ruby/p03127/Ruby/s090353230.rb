n = gets.to_i
a = gets.split(' ').map(&:to_i).sort.first(2)
puts a[0].gcd(a[1])