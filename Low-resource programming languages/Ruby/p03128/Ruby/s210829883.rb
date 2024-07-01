n, m  = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i)

cs = [2,5,5,4,5,6,3,7,6].map.with_index {|cost, num| [cost, num+1] }.select {|_, num| as.include?(num) }.to_h

dp = Array(n+1)

(n+1).times do |i|
  tmp = cs[i].to_i.to_s
  cs.each do|cost, num|
    next if i-cost<0 || dp[i-cost].to_i.zero?

    c = dp[i-cost] > num.to_s ? dp[i-cost]+num.to_s : num.to_s+dp[i-cost]
    tmp = c if c.length > tmp.length || c.length==tmp.length && c>tmp
  end
  dp[i]=tmp
end

puts dp[n]