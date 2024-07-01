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
w.times do |i|
  tmp_arr << true
end
tmp_arr << true
arr << tmp_arr

h_pos = []
h_tmp_count = []
w.times do |i|
  h_pos << -1
  h_tmp_count << -1
end

max = 0

(0..(h-1)).each do |i|
  w_pos = -1
  w_tmp_count = -1
  (0..(w-1)).each do |j|
    bool = arr[i][j]
    next if bool


    w_count = 0
    if j < w_pos then
      w_count = w_tmp_count
    else
      ((j+1)..(w)).each do |j2|
        bool_j2 = arr[i][j2]
        if bool_j2 then
          w_pos = j2
          w_tmp_count = w_count
          break
        else
          w_count += 1
        end
      end
    end

    h_count = 0
    if i < h_pos[j]
      h_count = h_tmp_count[j]
    else
      ((i+1)..(h)).each do |i2|
        bool_i2 = arr[i2][j]
        if bool_i2 then
          h_pos[j] = i2
          h_tmp_count[j] = h_count
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
