s = gets.chomp.split('')
t = gets.chomp.split('')

ss = s.sort.join('')
tt = t.sort.reverse.join('')

if ss < tt
  puts 'Yes'
else
  puts 'No'
end