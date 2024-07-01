n = gets.to_i
heights = gets.split.map(&:to_i)
count = 0
heights_dup = heights.dup

heights_dup.each_with_index do |h, i|
  tmp_h = h
  tmp_c = 0
  heights[1..-1].each do |l|
    tmp_h >= l ? tmp_c += 1 : break
    tmp_h = l
  end
  count = tmp_c if count < tmp_c
  heights.shift
end

p count
