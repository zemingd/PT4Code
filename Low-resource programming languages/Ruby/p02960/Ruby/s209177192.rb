S = gets.chomp.split('').map do |s|
  if s == '?'
    '?'
  else
    s.to_i
  end
end

D = 13
MOD = 10 ** 9 + 7

dp = Array.new(D, 0)

if S[0] == '?'
  10.times do |i|
    dp[i] = 1
  end
else
  dp[S[0]] = 1
end

1.upto(S.size - 1) do |i|
  n = S[i]
  dp2 = Array.new(D, 0)
  dp.each_with_index do |d, di|
    if n == '?'
      10.times do |j|
        dp2[(di * 10 + j) % D] += d
      end
    else
      dp2[(di * 10 + n) % D] += d
    end

    D.times do |j|
      dp2[j] %= MOD
    end
    dp = dp2
  end
end

p dp[5]