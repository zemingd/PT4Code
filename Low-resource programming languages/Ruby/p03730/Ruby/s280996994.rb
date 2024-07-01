a, b, c = gets.chomp.split.map(&:to_i)
puts (c % a.gcd(b) == 0)? "YES" : "NO"