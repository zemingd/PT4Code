n, _w = gets.split.map(&:to_i)
 
ans = 0
dp = Hash.new(0)
dp[0] = 0
n.times do |i|
  prev = dp.dup
  w, v = gets.split.map(&:to_i)
  prev.each do |key, value|
    if key + w <= _w
      x = value + v
      if x > dp[key + w]
        dp[key + w] = x
        ans = x if ans < x 
      end
    end
    dp[key] = value
  end
end

puts ans
