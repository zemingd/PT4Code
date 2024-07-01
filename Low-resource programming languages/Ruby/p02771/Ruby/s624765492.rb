arr = gets.chop.split.map(&:to_i)
if arr.uniq.one?
  print 'No'
else
  print 'Yes'
end