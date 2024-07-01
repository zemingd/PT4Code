h,w = gets.chomp.split(" ").map(&:to_i)

arr = [Array.new(w+2, -1)]
keys = []
count = 0
result = 0
h.times do |h_i|
  tmp_arr = []
  str = gets.chomp
  w.times do |w_i|
    if str[w_i] == "#" then
      keys << [h_i + 1, w_i + 1]
      count += 1
      tmp_arr << 1
    else
      tmp_arr << 0
    end
  end
  arr << [-1] + tmp_arr + [-1]
end
arr << [Array.new(w+2, -1)]

while count < h * w do
  tmp_keys = keys
  keys = []
  result += 1
  tmp_keys.each do |(h_i, w_i)|
    if arr[h_i - 1][w_i] == 0 then
      keys << [h_i - 1, w_i]
      arr[h_i - 1][w_i] = 1
      count += 1
    end
    if arr[h_i + 1][w_i] == 0 then
      keys << [h_i + 1, w_i]
      arr[h_i + 1][w_i] = 1
      count += 1
    end
    if arr[h_i][w_i - 1] == 0 then
      keys << [h_i, w_i - 1]
      arr[h_i][w_i - 1] = 1
      count += 1
    end
    if arr[h_i][w_i + 1] == 0 then
      keys << [h_i, w_i + 1]
      arr[h_i][w_i + 1] = 1
      count += 1
    end
  end
end

puts result