num = gets.chomp.to_i
 
i = 0
loop do

    if (i**2 <= num) && ((i+1) ** 2 > num)
        puts i ** 2
        break
    end
 
    i += 1
end