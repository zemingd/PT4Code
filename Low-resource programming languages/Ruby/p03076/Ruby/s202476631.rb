c = []
5.times do
    c << gets.chomp.to_i
end

cost = c.map{|x| x.ceil(-1)}
d = c.map{|x| (10 - x % 10)%10}
max = d.max

sum = 0
cost.each do |x|
    sum = sum + x
end

sum = sum - max
print sum