while true
  str = gets
  array = str.split
  array.sort
  break if array[0] == 0 && array[1] == 0
  puts array[0] + ' ' + array[1]
end