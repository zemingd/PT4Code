n = gets.to_i
t = gets.to_i
(n-1).times do |i|
    t = t.lcm(gets.to_i)
end
puts t
