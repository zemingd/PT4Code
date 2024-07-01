n = gets.to_i
ary = gets.split.map(&:to_i)
sum = ary.inject(:+)
ans = 0

n.times do |i|
  sum = sum - ary[i]
  ans += ary[i] * sum
end

puts ans