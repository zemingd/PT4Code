h,w = gets.chomp.split(" ").map(&:to_i)

arr = []
arr << Array.new(w+2, "n")
hash = {}
count = 0
result = 0
h.times do |h_i|
  tmp_arr = ["n"] + gets.chomp.split("") + ["n"]
  tmp_arr.each_with_index do |a, w_i|
    if a == "#" then
      hash[[h_i + 1, w_i + 1]] = 0
      count += 1
    end
  end
  arr << tmp_arr
end
arr << Array.new(w+2, "n")

while count < h * w do
  keys = hash.keys
  hash = {}
  result += 1
  keys.each do |(h_i, w_i)|
    if arr[h_i - 1][w_i] == "." then
      hash[[h_i - 1, w_i]] = result
      arr[h_i - 1][w_i] = "#"
      count += 1
    end
    if arr[h_i + 1][w_i] == "." then
      hash[[h_i + 1, w_i]] = result
      arr[h_i + 1][w_i] = "#"
      count += 1
    end
    if arr[h_i][w_i - 1] == "." then
      hash[[h_i, w_i - 1]] = result
      arr[h_i][w_i - 1] = "#"
      count += 1
    end
    if arr[h_i][w_i + 1] == "." then
      hash[[h_i, w_i + 1]] = result
      arr[h_i][w_i + 1] = "#"
      count += 1
    end
  end
end

puts result
