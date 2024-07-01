r = gets.chomp.to_i
g = gets.chomp.to_i
if r >= g
    puts r - (r - g) * 2
else
    puts r + (g - r) * 2
end
