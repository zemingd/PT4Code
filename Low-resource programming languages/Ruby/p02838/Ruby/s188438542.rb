mod = 10 ** 9 + 7
n = gets.to_i

h = Array.new(60,0)
bi = [1]
59.times {bi << bi[-1] * 2 % mod}

gets.split.each do |e|
    e = e.to_i
    60.times {|i| h[i] += e[i]}
end

ans = 0
h.each_with_index do |v, i|
    ans = (ans + v * (n - v) * bi[i]) % mod
end

puts ans