array = gets.chomp.split(" ")

array.each_with_index do |string, idx|
  array[idx] = string.chomp.split("")
end

array[0].last == array[1].first && array[1].last == array[2].first ? answer = "YES" : answer = "NO"
puts answer