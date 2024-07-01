s = gets.chomp!
anm = s.split(' ')
a = anm[0].to_i
b = anm[1].to_i
x = anm[2].to_i

if a <= x and x <= a + b
  puts 'YES'
else
  puts'NO'
end