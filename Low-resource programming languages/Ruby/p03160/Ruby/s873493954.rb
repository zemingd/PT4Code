# coding: utf-8

N = gets.to_i
hs = gets.split.map {|e| e.to_i}

INF = 10**5

# dpテーブル用意
dp = Array.new(N+2, 0)

hs.each_with_index do |e, i|
  if i == 0
    next
  elsif i == 1
    dp[1] = (hs[1] - hs[0]).abs
  else
    _a = (hs[i] - hs[i-1]).abs + dp[i-1]
    _b = (hs[i] - hs[i-2]).abs + dp[i-2]
    if _a < _b
      dp[i] = _a
    else
      dp[i] = _b
    end
  end
end


puts dp[N-1]
