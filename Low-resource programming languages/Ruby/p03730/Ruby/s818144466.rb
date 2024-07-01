a,b,c=gets.split.map(&:to_i)
puts c % a.gcd(b) == 0 ? "YES" : "NO"