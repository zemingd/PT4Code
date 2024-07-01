s =gets.split('')
t =gets.split('')

S = s.sort
T = t.sort

if -1 == ( S <=> T )
  puts 'Yes'
else
  puts 'No'
end