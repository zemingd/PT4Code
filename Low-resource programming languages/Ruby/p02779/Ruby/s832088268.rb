n = gets.chop.to_i
unip_size = gets.chop.split.map(&:to_i).uniq.size
if n == unip_size
  print 'Yes'
else
  print 'No'
end