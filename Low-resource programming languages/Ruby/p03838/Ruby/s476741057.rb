x, y = gets.split.map(&:to_i)
if x >= 0
    if y >= x
        puts y - x
    elsif y >= 1
        puts x - y + 2
    else
        puts (y + x).abs + 1
    end
else
    if y >= x.abs
        puts y - x.abs + 1
    elsif y >= 1
        puts -y - x + 1
    elsif y >= x
        puts y - x
    else
        puts y.abs - x.abs + 2
    end
end