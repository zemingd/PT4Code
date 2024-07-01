gets.to_i
array = gets.split.map(&:to_i)

min = array.inject(:+).abs

array.each_index do |i|
  next if array[i+1..-1].inject(:+).nil?
  abs_diff = (array[0..i].inject(:+) - array[i+1..-1].inject(:+)).abs
  min = abs_diff if abs_diff < min
end

p min
