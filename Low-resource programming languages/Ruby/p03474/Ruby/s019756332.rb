a,b = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp

if s =~ /^\d{#{a}}-\d{#{b}}/
  puts 'Yes'
else
  puts 'No'
end