S = gets.chop(&:to_s)
s1 = S[0,2].to_i
s2 = S[2,3].to_i
if s1 == 0 || s2 == 0
  if 1 <= s1 && s1 <= 12
    puts "MMYY"
  elsif 1 <= s2 && s2 <= 12
    puts "YYMM"
  else
    puts "NA"
  end
elsif s1 <= 12 && s2 <= 12
  puts "AMBIGUOUS"
elsif s1 >= 13 && s2 <= 12
  puts "YYMM"
elsif s1 <= 12 && s2 >= 13
  puts "MMYY"
else
  puts "NA"
end