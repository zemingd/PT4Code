n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = [0, (h[0] - h[1]).abs]

(2..(n-1)).each do |i|
  mini = 999999999
  (1..k).to_a.each do |j|
    break if i-j<0
    c = dp[i-j] + (h[i-j] - h[i]).abs
    mini = [c, mini].min
  end
  dp[i] = mini
end

puts dp.last
