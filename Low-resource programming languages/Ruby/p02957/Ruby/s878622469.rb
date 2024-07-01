a,b = gets.split(" ")
a = a.to_i
b = b.to_i

c = a + b
if c.odd?
    puts "IMPOSSIBLE"
else
    puts c / 2
end