a, b = gets.chomp.split(" ")

if a.to_i%2 == 0 || b.to_i%2 == 0
puts("No")
else
puts("Yes")
end