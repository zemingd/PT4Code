s = gets.chomp
t = gets.chomp
count = 0
3.times do |i|
    if s[i].eql?(t[i]) then count+=1 end
end
puts count