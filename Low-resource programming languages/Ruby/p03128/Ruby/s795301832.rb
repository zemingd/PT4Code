N, M = gets.split.map(&:to_i)
COSTS = [0,2,5,5,4,5,6,3,7,6]
A = gets.split.map(&:to_i)

# dp[i]: マッチをi本使ったときの最大の数
dp = Hash.new {nil}

dp[0] = ''

1.upto(N) do |i|
  # p "match: #{i}"
  A.each do |a|
    if i - COSTS[a] >= 0 && !dp[i-COSTS[a]].nil?
      new = dp[i - COSTS[a]] + a.to_s
      # p "#{dp[i]}:#{i} or #{new} from #{dp[i-COSTS[a]]}:#{i-COSTS[a]}"
      if dp[i]
        if dp[i].size < new.size || dp[i].to_i < new.to_i
          dp[i] = new
        end
      else
        dp[i] = new
      end
    end
  end
end

puts dp[N]
