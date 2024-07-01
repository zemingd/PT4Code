TEST = true
def pt(obj)
  p obj if TEST
end

n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

dp = [0, (h[0] - h[1]).abs]

(2..(n-1)).each do |i|
  dp.push [dp[i-2] + (h[i-2] - h[i]).abs, dp[i-1] + (h[i-1] - h[i]).abs].min
end

#p dp
puts dp.last
