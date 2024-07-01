# Your code here!

A, B = gets.chomp.split(" ").map(&:to_i)

if (A + B) % 2 == 0
    puts (A + B) / 2
else
    puts "IMPOSSIBLE"
end