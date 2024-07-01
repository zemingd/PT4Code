h,w = gets.chomp.split(" ").map(&:to_i)

arr = []
hash = {}
count = 0
result = 0
h.times do |h_i|
  tmp_arr = gets.chomp.split("")
  tmp_arr.each_with_index do |a, w_i|
    if a == "#" then
      hash[[h_i, w_i]] = 0
      count += 1
    end
  end
  arr << tmp_arr
end

while count < h * w do
  result += 1
  hash.keys.each do |(h_i, w_i)|
    next if hash[[h_i, w_i]] < result - 1
    if h_i - 1 >= 0 && arr[h_i - 1][w_i] == "." && !hash.has_key?([h_i - 1, w_i]) then
      hash[[h_i - 1, w_i]] = result
      arr[h_i - 1][w_i] = "#"
      count += 1
    end
    if h_i + 1 < h && arr[h_i + 1][w_i] == "." && !hash.has_key?([h_i + 1, w_i]) then
      hash[[h_i + 1, w_i]] = result
      arr[h_i + 1][w_i] = "#"
      count += 1
    end
    if w_i - 1 >= 0 && arr[h_i][w_i - 1] == "." && !hash.has_key?([h_i, w_i - 1]) then
      hash[[h_i, w_i - 1]] = result
      arr[h_i][w_i - 1] = "#"
      count += 1
    end
    if w_i + 1 < w && arr[h_i][w_i + 1] == "." && !hash.has_key?([h_i, w_i + 1]) then
      hash[[h_i, w_i + 1]] = result
      arr[h_i][w_i + 1] = "#"
      count += 1
    end
  end
end

puts result
