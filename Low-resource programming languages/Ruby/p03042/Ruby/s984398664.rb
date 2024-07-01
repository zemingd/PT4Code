a = gets.to_i
a1 = a / 100
a2 = a % 100

if a1.between?(0,99) == true && a2.between?(1,12) == true
    if a1.between?(1,12) == true && a2.between?(0,99) == true
        puts "AMBIGUOUS"        
    else
        puts "YYMM"
    end
elsif a1.between?(1,12) == true && a2.between?(0,99) == true
    puts "MMYY"
else
    puts "NA"
end
