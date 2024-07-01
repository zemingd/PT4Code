n, m  = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i)

match_numbers = [2, 5, 5, 4, 5, 6, 3, 7, 6].map.with_index {|e, i| [e, i+1] }.select {|e, i| as.include?(i)}.sort.to_h

dp = Array.new(n+1)
(1..n).each do |i|
  tmp = match_numbers[i].to_i.to_s
  match_numbers.each do |cost, number|
    next if !dp[i-cost] || dp[i-cost].zero?

    a = dp[i-cost].to_s
    b = number.to_s
    str = a<b ? (b+a) : (a+b)
    tmp = str if str.length > tmp.length || (tmp.length == str.length && tmp < str)
  end
  dp[i] = tmp.to_i
end

p dp[n]
