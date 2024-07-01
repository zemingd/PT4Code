n = gets.chomp

if "24579".include? n[-1]
  puts "hon"
elsif "0168".include? n[-1]
  puts "pon"
else
  puts "bon"
end