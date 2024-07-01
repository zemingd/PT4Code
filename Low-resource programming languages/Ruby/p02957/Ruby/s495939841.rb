(a, b) = gets.chomp.split
a = a.to_i
b = b.to_i
if (a+b)%2 == 0
    puts (a+b)/2
else
    puts "IMPOSSIBLE"
end