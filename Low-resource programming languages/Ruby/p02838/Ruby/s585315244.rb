N = gets.to_i
A = gets.split.map &:to_i

A_bin = A.map{|a| sprintf("%060b", a).chars}
bits_count = A_bin.transpose.map{|bits| bits.count("1")}
ans_bin = bits_count.map{|count| (count * (N - count)) % (10**9 + 7)}
ans = 0
ans_bin.reverse.each_with_index do |x, i|
    ans = (ans + x * (2 ** i)) % (10**9 + 7)
end
p ans