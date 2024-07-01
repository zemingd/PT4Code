s = gets.chomp

ym = s.scan(/\d{2}/).map(&:to_i)
if ym[0] == 0 && ym[1] == 0 then
  puts "NA"
elsif ym[0] == 0 && ym[1] >= 13 then
  puts "NA"
elsif ym[0] >= 13 && ym[1] == 0 then
  puts "NA"
elsif ym[0] >= 13 && ym[1] >= 13 then
  puts "NA"
elsif ym[0] == 0 && ym[1] <= 12 then
  puts "YYMM"
elsif ym[0] <= 12 && ym[1] == 0 then
  puts "MMYY"
elsif ym[0] <= 12 && ym[1] <= 12 then
  puts "AMBIGUOUS"
elsif ym[0] <= 12 || ym[1] >= 13 then
  puts "MMYY"
elsif ym[0] >= 13 || ym[1] <= 12 then
  puts "YYMM"
else
  puts "NA"
end
