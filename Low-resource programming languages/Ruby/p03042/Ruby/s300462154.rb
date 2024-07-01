s = gets.to_i
digits = []
original_s = s
begin
  digits.unshift s % 10
  s /= 10
end while s > 0
(4 - digits.length).times do
  digits.unshift 0
end
first = digits[0] * 10 + digits[1]
second = digits[2] * 10 + digits[3]
if first > 0 && first < 13 && second > 0 && second < 13
  puts "AMBIGUOUS"
elsif first > 0 && first < 13
  puts "MMYY"
elsif second > 0 && second < 13
  puts "YYMM"
else
  puts "NA"
end