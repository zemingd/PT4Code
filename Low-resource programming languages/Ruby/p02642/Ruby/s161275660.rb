N = gets.to_i
A = gets.split.map(&:to_i).sort
dp = Array.new(A.max + 1, 0)
W = Hash.new(0)
A.each do |a|
  W[a] += 1
  next if dp[a] > 0
  (1 .. dp.size).each do |k|
    break if a * k >= dp.size
    break if dp[a * k] > 0
    dp[a * k] = a
  end
end
puts A.reject{|a| W[a] > 1}.count{|a| dp[a] == a }
