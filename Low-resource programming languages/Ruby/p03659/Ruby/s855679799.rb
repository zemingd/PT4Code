n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
cumulative_sum = [0]
ans = 1 << 40
n.times do |i|
    cumulative_sum << a[i] + cumulative_sum[i]
end
cumulative_sum.shift

(n-1).times do |i|
    tmp = (cumulative_sum[n-1] - cumulative_sum[i] * 2).abs
    ans = ans > tmp ? tmp : ans
end

puts ans