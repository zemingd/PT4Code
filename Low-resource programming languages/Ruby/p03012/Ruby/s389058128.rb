N = gets.to_i
ws = gets.split.map(&:to_i)

sum1 = 0
sum2 = ws.inject(:+)
ans = 100 * 1000

N.times do |i|
  s = ws[i]
  sum1 += s
  sum2 -= s
  ans = (sum1 - sum2).abs if (sum1 - sum2).abs < ans
end

puts ans