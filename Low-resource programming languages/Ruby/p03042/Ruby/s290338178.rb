s = gets.chomp
a = "#{s[0]}#{s[1]}".to_i
b = "#{s[2]}#{s[3]}".to_i

if a.between?(1,12) && b.between?(1,12)
  puts "AMBIGUOUS"
elsif a > 0 && b.between?(1,12)
  puts "YYMM"
elsif a.between?(1,12) && b > 0
  puts "MMYY"
else
  puts "NA"
end