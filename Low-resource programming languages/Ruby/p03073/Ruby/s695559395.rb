s = gets.chomp
ret1 = 0
ret2 = 0
s.each_char.with_index do |c, i|
    if i % 2 == 0
        ret1 += 1 if c == '0'
    else
        ret1 += 1 if c == '1'
    end
end
s.each_char.with_index do |c, i|
    if i % 2 == 0
        ret2 += 1 if c == '1'
    else
        ret2 += 1 if c == '0'
    end
end
puts [ret1, ret2].min