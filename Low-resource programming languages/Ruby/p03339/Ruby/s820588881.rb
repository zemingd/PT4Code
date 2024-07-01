n = gets.chomp.to_i
s = gets.chomp.split("")
count = 0
s.each do |i|
    if i == "E"
        count += 1
    end
end
min = Float::INFINITY
migi = 0
tmp = count
s.each do |i|
    if i == "E"
        tmp -= 1
    end
    min = [min,tmp].min
    if i == "W"
        tmp += 1
    end        
end
puts min