D, T, S = gets.chop.split.map(&:to_f)
 
if(D/S>T)
  puts 'Yes'
else
  puts 'No'
end