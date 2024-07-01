n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
m = a[0]
a.each do |i|
    m = m.lcm(i)
end
m -= 1
ans = 0
a.each do |i|
    ans += m % i
end
puts ans