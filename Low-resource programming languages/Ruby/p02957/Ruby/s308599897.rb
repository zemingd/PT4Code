line = gets.chomp.split(" ").map(&:to_i)
a = line[0]
b = line[1]

if (a + b) % 2 == 0
    puts (a + b) / 2
else
    puts "IMPOSSIBLE"
end
