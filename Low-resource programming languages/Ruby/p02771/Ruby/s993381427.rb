arr = gets.chomp.split(' ')
if arr.uniq.size == 2
  print 'Yes'
else
  print 'No'
end