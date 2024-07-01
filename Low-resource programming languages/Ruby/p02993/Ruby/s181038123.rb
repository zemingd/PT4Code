S=gets.chomp

if S =~ /(.)\1+/
  puts "Bad"
else
  puts "Good"
end