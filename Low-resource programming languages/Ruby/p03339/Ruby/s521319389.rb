n = gets.chomp.to_i
s = gets.chomp.split("")
min_count   = n
left_count  = 0
right_count = s.count("E")

s.each do |char|
    if char == "E"
        right_count -= 1
    end
    min_count = [min_count,left_count+right_count].min
    if char == "W"
        left_count += 1
    end
end
puts min_count
