N = gets.chop.to_i
S = [0]
N.times do
  S << gets.chop.to_i
end

S.sort!

dp = Array.new(N + 1)
dp[0] = [{score: 0, sum: 0, list: Array.new(N+1, 0)}]

def score(v)
  v % 10 == 0 ? 0 : v
end

(1..N).to_a.each do |i|
  (1..N).to_a.each do |j|
    dp[i] = [] if dp[i] == nil

    max_o = nil
    max_score = -1
    dp[i-1].each do |o|
      next unless o[:list][j] == 0
      sum = S[j] + o[:sum]
      if score(sum) > max_score
        max_score = score(sum)
        max_o = o
      end
    end
    next if max_o.nil?
    new_sum = max_o[:sum] + S[j]
    new_score = score(new_sum)
    new_list = max_o[:list].dup
    new_list[j] = S[j]

    dp[i] << {score: new_score, sum: new_sum, list: new_list}
  end
  dp[i].uniq!
end

max = dp.flatten.max do |o|
        o[:score]
      end
p max[:score]