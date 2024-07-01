n = gets.to_i
a = gets.split.map(&:to_i)
c = 0
mn = 1000000000
ans = 0
a.each do |i|
    c ^= 1 if i < 0
    mn = i.abs if mn > i.abs
    ans += i.abs
end
ans -= mn*2 if c == 1
puts ans