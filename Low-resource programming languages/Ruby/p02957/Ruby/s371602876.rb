a, b = gets.split.map(&:to_i)
x = (a + b) / 2
if ((a + b) % 2 == 0) 
    puts x
else
    puts "IMPOSSIBLE"
end