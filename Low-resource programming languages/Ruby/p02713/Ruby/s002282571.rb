k = gets.to_i
list = [*1..k].repeated_permutation(3).to_a
ans = 0
list.each do |ary|
  ans += ary.inject(:gcd)
end
puts ans
