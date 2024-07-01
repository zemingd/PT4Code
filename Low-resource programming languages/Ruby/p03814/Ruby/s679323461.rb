s = gets.chomp
start = -1
ending = -1


s.size.times do |i|
    if start < 0
        if s[i] == 'A'
            start = i
        end
    else
        if s[i] == 'Z'
            ending = i
        end
    end
end
result = ending - start + 1
puts result
