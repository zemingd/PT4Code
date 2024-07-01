a = gets.to_i
b = gets.to_i
if a == 1 
    if b == 2
        puts 3
    elsif b == 3
        puts 2
    end
elsif a == 2
    if b == 1
        puts 3
    elsif b == 3
        puts 2
    end  
elsif a == 3
    if b == 1
        puts 2
    elsif b == 2
        puts 1
    end
end
