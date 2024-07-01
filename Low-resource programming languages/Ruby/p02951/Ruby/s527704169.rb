a, b, c = gets.chomp.split(" ").map(&:to_i)

available = a - b

if c - available > 0 
 print(c-available)
else
 print(0)
end