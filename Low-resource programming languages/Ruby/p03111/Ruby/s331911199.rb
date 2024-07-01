n = gets.to_i
A = gets.split.map(&:to_i)
ans = 0
A.each do |a|
  ans = ans.gcd(a)
end

puts ans