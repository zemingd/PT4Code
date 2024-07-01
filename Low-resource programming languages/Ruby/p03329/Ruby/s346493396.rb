require "set"
MAX = 100_000
n = gets.chomp.to_i
dp = Hash.new{MAX}

6.times do |i|
  dp[i + 1] = i + 1
end
dp[7], dp[8] = 2, 3

set_for_once = Set.new({})
(Math.log(MAX, 6).ceil).times.reduce(set_for_once){|memo, attr| memo.add 6 ** attr}
(Math.log(MAX, 9).ceil).times.reduce(set_for_once){|memo, attr| memo.add 9 ** attr}
set_for_once = set_for_once.sort
set_for_once.each{|attr| dp[attr] = 1}

10.upto(n) do |i|
  next if dp[i] != MAX
  idx = set_for_once.index{|attr| attr > i} || set_for_once.size - 1
  idx.times do |j|
    dp[i] = [dp[i - set_for_once[j]] + 1, dp[i]].min
  end
end
puts dp[n]