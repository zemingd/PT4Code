c = []
5.times do
    c << gets.chomp.to_i
end
 
d = c.map{|x| (10 - x % 10)%10}

sum = 0
c.each do |x|
    sum = sum + x.ceil(-1)
end

print sum - d.max