n = gets.to_s.chomp
# p n[-1]
if n[-1] == "3"
  puts "bon"
elsif n[-1] == "0" || n[-1] == "1" || n[-1] == "6" || n[-1] == "8"
  puts "pon"
else
  puts "hon"
end