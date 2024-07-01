s = gets.chomp!
if s[6] == "4" || s[6] == "3"
  puts "Heisei"
elsif  s[6] == "2"  || s[6] == "1"
  if s[5] == "0"
    puts "Heisei"
  else
    puts"TBD"
  end
else
  puts "TBD"
end
