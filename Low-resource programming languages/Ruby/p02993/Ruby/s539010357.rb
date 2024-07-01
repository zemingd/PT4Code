s = gets.chomp.split("")

if(s[0]==s[1])
  puts "Bad"
elsif(s[1]==s[2])
  puts "Bad"
elsif(s[2]==s[3])
  puts "Bad"
else
  puts "Good"
end
