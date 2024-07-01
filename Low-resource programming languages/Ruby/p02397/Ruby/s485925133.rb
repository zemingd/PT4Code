while str = gets do
  array = str.chomp.split(" ").map(&:to_i)
  break if array[0] == 0 && array[1] == 0
  array.sort
  puts "#{array[0]} #{array[1]}"
end