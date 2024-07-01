first_line = STDIN.gets.strip
second_line = STDIN.gets.strip

inn_heights = second_line.split(' ').map(&:to_i)
count = 0

inn_heights.each_with_index do |height, idx|
  if idx == 0
    count = count + 1
    next
  end

  is_ocean_view = true
  (0...idx).each do |i|
    if height < inn_heights[i]
      is_ocean_view = false
      break
    end
  end

  count = count + 1 if is_ocean_view
end

puts count