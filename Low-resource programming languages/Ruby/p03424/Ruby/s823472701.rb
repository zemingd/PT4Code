n = gets.chomp.to_i
s = gets.chomp.split(' ')

if s.uniq.size == 3 then
  puts 'Three'
else
  puts 'Four'
end