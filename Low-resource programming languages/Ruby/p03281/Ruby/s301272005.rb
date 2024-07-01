# https://atcoder.jp/contests/abc106/tasks/abc106_b

require 'prime'

N = gets.to_i

if N < 105
  puts 0
  exit
end

ans = 1
(106..N).each do |x|
  ans += 1 if Prime.prime_division(x).inject(1) { |result, set| result * (set[1] + 1) } == 8
end

puts ans
