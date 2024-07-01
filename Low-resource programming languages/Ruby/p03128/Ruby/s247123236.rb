n, m  = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i)

candidates = [2,5,5,4,5,6,3,7,6].map.with_index {|e, i| [e, i+1] }.select {|e, i| as.include?(i) }.to_h

dp = Array.new(n+1)

(n+1).times do |i|
  tmp = candidates[i].to_i.to_s
  candidates.each do |cost, num|
    next if i-cost < 0 || dp[i-cost].to_i.zero?

    exists = dp[i-cost]
    c = exists > num.to_s ? exists+num.to_s : num.to_s+exists
    tmp = c if c.length > tmp.length || c.length== tmp.length && c>tmp
  end
  dp[i] = tmp
end

#p dp
puts dp[n]
