line = gets
array = line.split("")
array.pop
number = 0

array.each_index do |idx|
    if idx == array.length / 2
      break
    end
    if array[idx] != array[array.length - idx -1]
      number += 1
    end
  end

puts number
