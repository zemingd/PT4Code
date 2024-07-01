N, K = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)
ls.sort!
ans = 0
for i in N-K...N
    ans += ls[i]
end
puts ans
=begin
    N, M = gets.split.map(&:to_i)
    AS = N.times{ gets.to_i }
=end
