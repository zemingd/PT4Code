h,w = gets.chomp.split(" ").map(&:to_i)

arr = []
keys = []
count = 0
result = 0
h.times do |h_i|
  tmp_arr = []
  str = gets.chomp
  w.times do |w_i|
    if str[w_i] == "#" then
      keys << [h_i, w_i]
      count += 1
      tmp_arr << "#"
    else
      tmp_arr << "."
    end
  end
  arr << tmp_arr
end

while count < h * w do
  tmp_keys = keys
  keys = []
  result += 1
  tmp_keys.each do |(h_i, w_i)|
    if h_i - 1 >= 0 && arr[h_i - 1][w_i] == "." then
      keys << [h_i - 1, w_i]
      arr[h_i - 1][w_i] = "#"
      count += 1
    end
    if h_i + 1 < h && arr[h_i + 1][w_i] == "." then
      keys << [h_i + 1, w_i]
      arr[h_i + 1][w_i] = "#"
      count += 1
    end
    if w_i - 1 >= 0 && arr[h_i][w_i - 1] == "." then
      keys << [h_i, w_i - 1]
      arr[h_i][w_i - 1] = "#"
      count += 1
    end
    if w_i + 1 < w && arr[h_i][w_i + 1] == "." then
      keys << [h_i, w_i + 1]
      arr[h_i][w_i + 1] = "#"
      count += 1
    end
  end
end

puts result
