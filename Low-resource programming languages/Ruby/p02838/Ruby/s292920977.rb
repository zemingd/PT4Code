require 'matrix'
N = gets.to_i
A = gets.split.map &:to_i

A_bin = A.map{|a| sprintf("%060b", a).chars.map &:to_i}
bits_count = A_bin.map{|a_bin| Matrix[a_bin]}.inject(:+)
ans_bin = bits_count.map{|count| (count * (N - count)) % (10**9 + 7)}
ans = 0
ans_bin.reverse_each.with_index do |x, i|
    ans = (ans + (x << i)) % (10**9 + 7)
end
p ans