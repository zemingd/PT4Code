n = gets.to_i
ary = gets.split.map(&:to_i)

sum1 = 0
sum2 = ary.inject(:+)
ans = 10000000

n.times do |i|
  sum1 += ary[i]
  sum2 -= ary[i]
  ans = [ans, (sum1 - sum2).abs].min
end

puts ans
