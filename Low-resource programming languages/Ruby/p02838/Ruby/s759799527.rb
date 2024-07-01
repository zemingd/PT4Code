mod = 10 ** 9 + 7
n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)

a.each do |e|
    e = e.to_s(2).reverse
    e.size.times do |i|
        h[i] += 1 if e[i] == "1"
    end
end

ans = 0
h.each do |key, value|
    ans = (ans + 2 ** key * value * (n - value)) % mod
end

p ans