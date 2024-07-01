i = gets.split 
a = i[0].to_i
b = i[1].to_i
c = a + b
if c % 2 == 1
  puts "IMPOSSIBLE"
else 
  puts (a + b) /2
end
