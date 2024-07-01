n = gets.to_i
heights = gets.split.map(&:to_i)
count = 0

heights.each_with_index do |h, i|
  tmp_h = h
  tmp_c = 0
  heights[i+1..-1].each do |h_a|
    tmp_h >= h_a ? tmp_c += 1 : break
    tmp_h = h_a
  end
  count = tmp_c if count < tmp_c
end

p count