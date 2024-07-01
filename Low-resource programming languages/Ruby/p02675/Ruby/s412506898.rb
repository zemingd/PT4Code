n=gets.chomp
if n[-1]=="3"
  puts "bon"
elsif ["0","1","6","8"].include?(n[-1])
  puts "pon"
else
  puts "hon"
end

