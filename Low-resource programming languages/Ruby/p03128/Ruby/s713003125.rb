# require 'byebug'

n, m  = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i)

match_numbers = [nil, 2, 5, 5, 4, 5, 6, 3, 7, 6].map.with_index {|e, i| [e, i]}.select {|e, i| as.include?(i) }.sort.to_h

# p match_numbers
# p match_numbers.to_h

dp = Hash.new(0)
(1..n).each do |i|
  tmp = match_numbers[i]
  # p tmp
  # byebug
  match_numbers.keys.each do |k|
    unless dp[i-k].zero?
      a = dp[i-k].to_s
      b = match_numbers[k].to_s
      str = a < b ? (b+a) : (a+b)
      if tmp.to_i < str.to_i
        tmp = str
      end
    end
  end
  dp[i] = tmp.to_i
end

# p dp
p dp[n]
