s = gets.chomp
if s[0..1].to_i <= 12 && s[2..3].to_i <= 12 && s[0..1].to_i >= 1 && s[2..3].to_i >= 1
    puts "AMBIGUOUS"
elsif s[0..1].to_i <= 12 && s[2..3].to_i > 12 && s[0..1].to_i >= 1
    puts "MMYY"
elsif s[0..1].to_i > 12 && s[2..3].to_i <= 12 && s[2..3].to_i >= 1
    puts "YYMM"
elsif  s[0..1].to_i > 12 && s[2..3].to_i > 12
    puts "NA"
elsif s[0..1].to_i == 0 || s[2..3].to_i == 0
    puts "NA"
end
