s = gets.chomp

if (s.start_with?("hi") && s.end_with?("hi"))
  puts 'Yes'
else
  puts 'No'
end