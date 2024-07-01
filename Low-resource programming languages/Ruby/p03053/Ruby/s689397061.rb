h,w = gets.chomp.split(" ").map(&:to_i)

arr = []
count = 0
keys = []
result = 0
prev_arr = []
h.times do |h_i|
  tmp_arr = []
  arg = gets.chomp.split("")
  arg.each_with_index do |a, w_i|
    bool = false
    if a == "#" then
      tmp_arr << "#"
#      hash[[h_i, w_i]] = 0
      count += 1
      bool = true
    elsif (h_i > 0 && prev_arr[w_i] == "#") || arg[w_i - 1] == "#" || arg[w_i + 1] == "#" then
      tmp_arr << "#"
      keys << [h_i, w_i]
      count += 1
      result = 1
    else
      tmp_arr << "."
      result = 1
    end
    if bool && h_i > 0 && arr[h_i - 1][w_i] == "." then
      keys << [h_i - 1, w_i]
      arr[h_i - 1][w_i] = "#"
      count += 1
    end
  end
  arr << tmp_arr
  prev_arr = arg
end

while count < h * w do
  result += 1
  tmp_keys = keys
  keys = []
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
