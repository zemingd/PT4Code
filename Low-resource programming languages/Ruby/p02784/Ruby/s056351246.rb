arr = gets.chomp.split(' ').map(&:to_i)
arm = gets.chomp.split(' ').map(&:to_i)
if arr[0] <= arm.sum
  print 'Yes'
else
  print 'No'
end