a, b = gets.split(/\s+/).map(&:to_i)
 
if (a * b) % 2 == 0
  puts("Even")
else
  puts("Odd")
end