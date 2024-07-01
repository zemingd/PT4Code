x,y = gets.split.map(&:to_i)

if x > y
    if x > 0 && y < 0
        puts (x + y).abs + 1
    else
        puts x - y + 2
    end
else
    puts y - x
end