a,b,c = gets.split(" ")
a = a.to_i
b = b.to_i
c = c.to_i

l = b + c
if l >= a
    puts l - a
elsif l < a
    puts 0
end