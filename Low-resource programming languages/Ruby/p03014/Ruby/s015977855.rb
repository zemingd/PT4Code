h,w = gets.chomp.split(" ").map(&:to_i)

arr = []
h.times do |i|
  tmp_arr = []
  input = gets.chomp
  (0..(input.length-1)).each do |j|
    tmp_arr << (input[j] == "#")
  end
  tmp_arr << true
  arr << tmp_arr
end


tmp_arr = []
h_pos_count = []
w.times do |i|
  tmp_arr << true
  h_pos_count << [-1, -1]
end
tmp_arr << true
arr << tmp_arr

max = 0
(0..(h-1)).each do |i|
  w_pos = -1
  w_tmp_count = -1
  (0..(w-1)).each do |j|
    next if arr[i][j]

    w_count = 0
    if j < w_pos then
      w_count = w_tmp_count
    else
      ((j+1)..(w)).each do |j2|
        if arr[i][j2] then
          w_pos = j2
          w_tmp_count = w_count
          break
        else
          w_count += 1
        end
      end
    end

    h_count = 0
    if i < h_pos_count[j][0]
      h_count = h_pos_count[j][1]
    else
      ((i+1)..(h)).each do |i2|
        if arr[i2][j] then
          h_pos_count[j] = [i2, h_count]
          break
        else
          h_count += 1
        end
      end
    end

    count = h_count + w_count + 1
    max = count if count > max
  end
end

puts max
