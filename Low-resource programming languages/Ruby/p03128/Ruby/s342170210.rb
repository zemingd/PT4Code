n, m  = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i)

matched_numbers = [2, 5, 5, 4, 5, 6, 3, 7, 6].map.with_index {|e, i| [e, i+1] }.select {|e, i| as.include?(i+1) }.sort.to_h

#p matched_numbers

dp = Array.new(n+1, 0)
(1..n).each do |i|
  tmp = matched_numbers[i].to_i.to_s
  matched_numbers.each do |cost, number|
    next if dp[i-cost].nil? || dp[i-cost].to_i.zero?

    a = dp[i-cost].to_s
    b = number.to_s
    str = a<b ? (b+a) : (a+b)
    tmp = str if tmp.length < str.length || (tmp.length==str.length && tmp < str)
  end
  dp[i] = tmp
end

#p dp
p dp[n].to_i