a,b = gets.chomp.split(' ')
a = "0x#{a}".to_i(16)
b = "0x#{b}".to_i(16)

if (a > b) 
  puts '>'
elsif(a == b)
  puts '='
else
  puts '<'
end
