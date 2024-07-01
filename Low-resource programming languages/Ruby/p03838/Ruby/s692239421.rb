array = gets.split(" ")
array.map!{|i|i.to_i}
 sa = ( array[0].abs - array[1].abs ).abs
if array[0] * array[1] == 0 && array[0] <= array[1]
  puts sa
elsif array[0] * array[1] == 0 && array[0] > array[1]
  puts sa + 1
else
  if array[0] * array[1] > 0 && array[0] < array[1]
    puts sa
  elsif array[0] * array[1] > 0 && array[0] >= array[1]
    puts sa + 2
  else
    puts sa + 1
  end
end