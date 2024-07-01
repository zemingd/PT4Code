N, M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
dp = [1]*N

M.times do
  a, b = gets.split.map(&:to_i)
  if H[a-1] > H[b-1]
    dp[b-1] = 0
  elsif H[a-1] == H[b-1]
    dp[a-1] = 0
    dp[b-1] = 0
  else
    dp[a-1] = 0
  end
end

p dp.select{|v| v == 1}.size
