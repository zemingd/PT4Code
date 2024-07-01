arr = gets.split.map(&:to_i)
arr.sort
if arr[0] == 5 && arr[1] == 5 && arr[2] == 7
  print 'YES'
else
  print 'NO'
end