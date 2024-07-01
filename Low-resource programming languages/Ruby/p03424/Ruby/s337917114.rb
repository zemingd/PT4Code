n = gets.chomp.to_i
s = gets.chomp.split(' ')

if s.uniq.size.to_s == 3 then
  puts 'Three'
else
  puts 'Four'
end