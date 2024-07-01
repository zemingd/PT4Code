s=gets.split('')
if s.count('R')==3
  puts 3
elsif s.count('R')==0
  puts 0
elsif s.count('R')==2 && s[1]!='R'
  puts 2
else
  puts 1
end