a = gets.to_i
b = gets.split.map(&:to_i)

l = Array.new(a, 0)
r = Array.new(a, 0)

(a - 1).times do |i|
  l[i + 1] = l[i].gcd(b[i])
end

(a - 1).downto(1) do |i|
  r[i - 1] = r[i].gcd(b[i])
end

ans = 1
a.times {|i| ans = [ans, l[i].gcd(r[i])].sort[1]}
p ans