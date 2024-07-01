str = gets.chomp

case str
when "5 7 5", "5 5 7", "7 5 5"
  puts :YES
else
  puts :NO
end