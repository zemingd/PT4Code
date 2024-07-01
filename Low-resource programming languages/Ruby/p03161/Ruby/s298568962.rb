n, k = gets.chomp.split(' ').map(&:to_i)
strs = gets.chomp.split(' ').map(&:to_i)

dp = [0, (strs[0]-strs[1]).abs]

[*2..(n-1)].each do |i|
  min = Float::INFINITY
  [*1..k].each do |j|
    break if j > i
    tmp = dp[i - j] + (strs[i]-strs[i-j]).abs
    min = tmp if tmp < min
  end
  dp << min
end
puts dp[-1]