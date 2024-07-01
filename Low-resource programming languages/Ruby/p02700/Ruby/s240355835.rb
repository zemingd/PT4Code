a, b, c, d = gets.split.map {|item| item.to_i}

loop do
    c -= b
    if c <= 0 then
        puts "Yes"
        break
    end
    a -= d
    if a <= 0 then
        puts "No"
        break
    end
end
