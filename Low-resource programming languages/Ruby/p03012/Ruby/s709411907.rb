n = gets.to_i
array = gets.split.map(&:to_i)

min = n * 100

array.each_index do |i|
  abs_diff = (array[0..i].sum - array[i+1..-1].sum).abs
  min = abs_diff if abs_diff < min
end

p min
