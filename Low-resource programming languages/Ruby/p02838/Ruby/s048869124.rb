mod = 10 ** 9 + 7
n = gets.to_i

h = Array.new(60,0)

gets.split.each do |e|
    e = e.to_i
    60.times {|i| h[i] += e[i]}
end

ans = 0
h.each_with_index do |v, i|
    ans = (ans + v * (n - v) * (1 << i % mod)) % mod
end

puts ans