a = gets.chomp.to_i
b = gets.chomp.to_i

if a == 1
    if b == 2
        puts 3
    else b == 3
        puts 2
    end
elsif a == 2
    if b == 1
        puts 3
    else
        puts 1
    end
elsif a == 3
    if b == 1
        puts 2
    else
        puts 1
    end
end