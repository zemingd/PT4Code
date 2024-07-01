n, a, b = gets.split(" ").map(&:to_i)

if a < b / n.to_f
    puts a * n
else 
    puts b
end
