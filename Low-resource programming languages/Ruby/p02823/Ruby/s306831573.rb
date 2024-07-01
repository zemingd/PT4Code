require 'pp'

n, a, b = gets.chomp!.split.map(&:to_i)
min, max = [a, b].minmax
if (b - a) % 2 == 0
    puts (b - a) / 2
else
    x, y = [min - 1, n - max].minmax
    
    puts (x + 1) + (b - a - 1) / 2
end



