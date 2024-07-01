require 'pp'

a, b = gets.chomp!.split(" ").map(&:to_i)
a, b = [a, b].minmax

if (b - a) % 2 == 0
    puts (b - a) / 2 + a
else
    puts "IMPOSSIBLE"
end
