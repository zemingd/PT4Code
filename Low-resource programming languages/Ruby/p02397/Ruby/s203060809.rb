loop do
  str = gets
  array = str.split
  array.to_i
  array.sort
  break if array == ["0", "0"]
  puts array[0] + ' ' + array[1]
end