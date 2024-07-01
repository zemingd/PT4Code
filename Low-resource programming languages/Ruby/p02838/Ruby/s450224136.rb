mod = 10 ** 9 + 7
n = gets.to_i
h = Array.new(61, 0)

gets.split.each do |e|
    e = e.to_i.to_s(2).reverse
    e.size.times do |i|
        h[i] += 1 if e[i] == "1"
    end
end

ans = 0
binary = [1]
60.times {|i| binary[i+1] = (binary[i] * 2) % mod}
h.each_with_index do |value, index|
    ans = (ans + binary[index] * value * (n - value)) % mod
end

puts ans