n = gets.to_s

if ["2","4","5","7","9"].include?(n[-2])
  puts "hon"
elsif ["0","1","6","8"].include?(n[-2])
  puts "pon"
else
  puts "bon"
end