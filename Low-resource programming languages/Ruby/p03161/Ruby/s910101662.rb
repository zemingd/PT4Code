n,k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
dp = Array.new(n,1.0/0)
dp[0] = 0
dp.each_index {|i|
  if i == 0
    next
  end
  posib = []
  (i-k..i-1).each do |j|
    if j < 0
      next
    end
    posib.push((array[j]-array[i]).abs + dp[j])
  end
  dp[i] = posib.min
}
# p dp
puts dp[-1]
