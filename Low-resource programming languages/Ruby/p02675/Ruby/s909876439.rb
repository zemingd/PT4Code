n = gets.chomp.to_s.split("")

if n[-1] == 3
  puts "bon"
elsif n[-1] == 0|1|6|8
  puts "pon"
else
  puts "hon"
end
  