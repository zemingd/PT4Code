k = gets.to_i
# list =
ans = 0
[*1..k].repeated_permutation(3).to_a.each do |ary|
  ans += ary.inject(:gcd)
end
puts ans
