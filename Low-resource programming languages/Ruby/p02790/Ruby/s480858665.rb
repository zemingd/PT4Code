a, b = gets.chomp.split(' ')
aa = []
b.to_i.times do
  aa << a
end
bb = []
a.to_i.times do
  bb << b
end
if a > b
   puts bb.join('')
else
  puts aa.join('')
end
