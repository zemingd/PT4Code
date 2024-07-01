while do
  array = gets.split.map!(&:to_i).sort
  break if array[0] == 0 && array[1] == 0
  puts("#{array[0]} #{array[1]}")
end