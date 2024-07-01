a, b, c = gets.chomp.split(" ")

if a == b 
    if b != c
        puts "Yes"
    else
        puts "No"
    end

elsif b == c
    if c != a
        puts "Yes"
    else
        puts "No"
    end
elsif c == a
    if a != b
        puts "Yes"
    else
        puts "No"
    end

else puts "No"

end