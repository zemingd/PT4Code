str = gets.chomp
a = str[0..1]
b = str[2..3]

if a[0] == "0" and a[1] != "0"
    flag_a = true
elsif a[0] == "1" and (a[1] == "0" or a[1] == "1" or a[1] == "2")
    flag_a = true
else
    flag_a = false
end

if b[0] == "0" and b[1] != "0"
    flag_b = true
elsif b[0] == "1" and (b[1] == "0" or b[1] == "1" or b[1] == "2")
    flag_b = true
else
    flag_b = false
end

if flag_a and flag_b
    puts "AMBIGUOUS"
elsif flag_a
    puts "MMYY"
elsif flag_b
    puts "YYMM"
else
    puts "NA"
end