s = gets.chomp
a = s[0,2].to_i
b = s[2,2].to_i

if a == 0 || b == 0
  puts "NA"
elsif a >= 1 && a <= 12
  puts "AMBIGIOUS"
else
  puts "YYMM"
end
