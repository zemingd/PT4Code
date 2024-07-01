require 'pp'

n, a, b = gets.chomp!.split.map(&:to_i)
if (b - a) % 2 == 0
    puts (b - a) / 2
else
    if b + a > n
        puts n - [a, b].min
    else
        puts [a, b].max - 1
    end
end



