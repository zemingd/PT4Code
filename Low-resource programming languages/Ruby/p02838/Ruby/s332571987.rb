mod = 10 ** 9 + 7
n = gets.to_i
a = gets.split.map{|e| e.to_i.to_s(2).to_i}
h = Array.new(61, 0)
x = 0

n.times do |i|
    x += a[i]
    next if i % 10 != 9
    x = x.to_s.reverse
    x.size.times do |i|
        h[i] += x[i].to_i
    end
    x = 0
end

x = x.to_s.reverse
x.size.times do |i|
    h[i] += x[i].to_i
end

ans = 0
binary = [1]
60.times {|i| binary[i+1] = (binary[i] * 2) % mod}
h.each_with_index do |value, index|
    ans = (ans + binary[index] * value * (n - value)) % mod
end

puts ans