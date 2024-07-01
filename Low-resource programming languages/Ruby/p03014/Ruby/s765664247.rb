h, w = gets.chomp.split(' ').map(&:to_i)
h_light_nums = Array.new(w, 0)
w_light_nums = Array.new(w, 0)
w_light_nums_max = Array.new(w, 0)
max = 0

h.times do |h_index|
  str = gets.chomp
  light_row = 0

  w.times do |w_index|
    ch = str[w_index]

    if ch == '.'
      light_row += 1
      h_light_nums[w_index] += 1
    else
      w_light_nums.concat([light_row] * light_row).push(0)
      light_row = 0

      if max < w_light_nums_max[w_index] + h_light_nums[w_index] - 1
        max = w_light_nums_max[w_index] + h_light_nums[w_index] - 1
      end

      w_light_nums_max[w_index] = 0
      h_light_nums[w_index] = 0
    end

    if w_light_nums[w_index] > w_light_nums_max[w_index]
      w_light_nums_max[w_index] = w_light_nums[w_index]
    end
  end
  w_light_nums.concat([light_row] * light_row)
  w_light_nums = w_light_nums.slice(w...(w*2))
end

w.times do |w_index|
  if max < w_light_nums_max[w_index] + h_light_nums[w_index] - 1
    max = w_light_nums_max[w_index] + h_light_nums[w_index] - 1
  end
end

p max
