h,w = gets.chomp.split(" ").map(&:to_i)

arr = []
hash = {}
count = 0
result = 0
h.times do |h_i|
  tmp_arr = []
  str = gets.chomp
  w.times do |w_i|
    if str[w_i] == "#" then
      hash[[h_i, w_i]] = 0
      count += 1
      tmp_arr << 1
    else
      tmp_arr << 0
    end
  end
  arr << tmp_arr
end

while count < h * w do
  keys = hash.keys
  hash = {}
  result += 1
  keys.each do |(h_i, w_i)|
    if h_i - 1 >= 0 && arr[h_i - 1][w_i] == 0 then
      hash[[h_i - 1, w_i]] = result
      arr[h_i - 1][w_i] = "#"
      count += 1
    end
    if h_i + 1 < h && arr[h_i + 1][w_i] == 0 then
      hash[[h_i + 1, w_i]] = result
      arr[h_i + 1][w_i] = "#"
      count += 1
    end
    if w_i - 1 >= 0 && arr[h_i][w_i - 1] == 0 then
      hash[[h_i, w_i - 1]] = result
      arr[h_i][w_i - 1] = "#"
      count += 1
    end
    if w_i + 1 < w && arr[h_i][w_i + 1] == 0 then
      hash[[h_i, w_i + 1]] = result
      arr[h_i][w_i + 1] = "#"
      count += 1
    end
  end
end

puts result
