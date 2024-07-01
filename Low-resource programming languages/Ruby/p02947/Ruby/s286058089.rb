N = gets.to_i
S = readlines.map {|s| s.chomp.chars.sort }

d = {}
ans = 0
(N-1).downto(0) do |i|
    d[S[i]] ||= 0
    d[S[i]] += 1
    ans += d[S[i]] - 1
end
puts ans