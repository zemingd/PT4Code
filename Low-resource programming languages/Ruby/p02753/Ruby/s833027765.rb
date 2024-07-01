s=gets.chomp.split('')
a = 0
b = 0
s.each do |c|
  a += 1 if c == 'A'
  b += 1 if c == 'B'
end
if a != 3 || b != 3
  puts 'No'
else
  puts 'Yes'
end