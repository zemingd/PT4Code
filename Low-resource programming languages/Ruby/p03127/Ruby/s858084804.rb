n = gets.to_i
as = gets.split.map(&:to_i)

ans = 0
as.each { |a, | ans = ans.gcd(a) }
puts ans
