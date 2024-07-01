s = gets.chomp

n = 0
4.times do |num|
    if s[num] == "+"
        n += 1
    else
        n -= 1
    end
end

puts n

