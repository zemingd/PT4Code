a, b = gets.stlip.map(&:to_i)

if (a - b).abs % 2 == 0
    puts (a - b).abs / 2
else
    puts "IMPOSSIBLE"
end