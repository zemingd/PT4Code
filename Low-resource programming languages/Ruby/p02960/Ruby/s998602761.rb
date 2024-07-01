ns = gets.chomp.split('').map{|m| m == '?' ? '?' : m.to_i}

dp = Array.new(ns.size) { Array.new(13, 0) }

if ns[0] == '?'
  10.times{|t| dp[0][t] = 1 }
else
  dp[0][ns[0]] = 1
end

dp.each_with_index do |d, i|
  next if i == ns.size - 1
  n = ns[i+1]
  d.each_with_index {|b, bi|
    if n == '?'
      10.times {|t|
        ne = (bi * 10 + t) % 13
        dp[i+1][ne] += b
        dp[i+1][ne] %= 1_000_000_007
      }
    else
      ne = (bi * 10 + n) % 13
      dp[i+1][ne] += b
      dp[i+1][ne] %= 1_000_000_007
    end
  }
end

p dp.last[5]
