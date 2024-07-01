num_array = gets.chomp.split("")

diff = 753
num_array.each_with_index do |item, idx|
  if (idx+2 == (num_array.length))
    break
  end

  number = (item + num_array[idx+1] + num_array[idx+2]).to_i
  if ((753-number).abs < diff)
    diff = (753-number).abs
  end
end

puts diff
