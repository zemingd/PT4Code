_n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

ans = 0
a.each { |d| ans = ans.gcd(d) } 
puts ans
