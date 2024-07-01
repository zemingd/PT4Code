s = readline.chop
t = readline.chop

if s == t[0..(s.size - 1)]
  puts 'Yes'
else
  puts 'No'
end
