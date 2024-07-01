s=gets.chomp
if s[0]==s[1]&& s[1]==s[2] && s[1]=="R"
  puts 3
elsif s[0]==s[1] && s[0]=="R"
  puts 2
elsif s[1]==s[2] && s[2]=="R"
  puts 2
elsif s[0]=="R"||s[1]=="R"||s[2]=="R"
  puts 1
else
  puts 0
end
