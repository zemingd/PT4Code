n = gets.to_i
a = gets.split.map(&:to_i)
b = [0] + gets.split.map(&:to_i)
c = [0] + gets.split.map(&:to_i)

pre = 0
ans = 0
a.each do |e|
    ans += b[e]
    ans += c[pre] if (pre == e - 1)
    pre = e
end

puts ans