ns = gets.chomp.split('').map{|m| m == '?' ? '?' : m.to_i}

dp = Array.new(13, 0)

if ns[0] == '?'
  10.times{|t| dp[t] = 1 }
else
  dp[ns[0]] = 1
end

(1..ns.size-1).each do |i|
  n = ns[i]
  dp_n = Array.new(13, 0)
  dp.each_with_index {|b, bi|
    if n == '?'
      10.times {|t|
        dp_n[ (bi * 10 + t) % 13 ] += b
      }
    else
      dp_n[ (bi * 10 + n) % 13 ] += b
    end
  }
  13.times{|t|
    dp_n[t] %= 1_000_000_007
  }
  dp = dp_n
end

p dp[5]
