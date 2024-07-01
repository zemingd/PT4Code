N = gets.to_i
Ws = gets.split.map(&:to_i)

sum = []

s = 0

sum_reverse = []

s_reverse = 0


sum.push(0)
sum_reverse.push(0)

Ws.each do |w|
  s += w
  sum.push(s)
end

Ws.reverse_each do |w|
  s_reverse += w
  sum_reverse.push(s_reverse)
end

results = []

(N + 1).times do |i|

  results << (sum[i] - sum_reverse[sum_reverse.length  - 1 - i]).abs

end


ans = results.min

puts ans
