x, y = gets.chomp.split(" ").map(&:to_i)
if x <= y
    if 0 <= x || y < 0 || y.abs < x.abs
        puts y - x
    else
        puts y + x + 1
    end
else
    if 0 <= y
        puts y - x + 1
    elsif x < 0
        puts (- y) + x + 2
    elsif y.abs < x.abs
        puts y + x + 1
    else
        puts (- y) - x + 1
    end
end