n = gets.to_i
t = []
n.times do
    a = gets.to_i
    t << a
end

ans = t[0]

t.each do |i|
    ans = ans.lcm(i)
end
puts ans