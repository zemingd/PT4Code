a = gets.chomp.to_i
b = gets.chomp.to_i
c = 0
if a == 1 || b == 1
    if a == 2 || b == 2
        c = 3
    else 
        c = 2
    end
else
    c = 1
end
puts c