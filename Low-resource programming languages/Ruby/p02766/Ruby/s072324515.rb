N, K = gets.split.map(&:to_i)
s = ""

div = N
loop do
    div, mod = div.divmod(K)
    s += mod.to_s
    break if div == 0
end

puts s.size