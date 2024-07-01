x, y = gets.chomp.split(" ").map(&:to_i)
if x <= y
    if 0 <= x || y <= 0
        puts y - x
    elsif y.abs < x.abs
        puts (- y) - x + 2
    else
        puts y + x + 1
    end
else
    if 0 < y || x < 0
        puts (- y) + x + 2
    elsif y.abs < x.abs
        puts y + x + 1
    else
        puts (- y) - x + 1
    end
end