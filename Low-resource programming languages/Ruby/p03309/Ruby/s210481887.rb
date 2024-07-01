
inputs = gets
arr_size = inputs.to_i
inputs = gets
arr = inputs.split(" ")
arr.map!(&:to_i)
cnt = 0
arr_mid = ((arr.size % 2).zero? ? arr[arr.size/2 - 1, 2].inject(:+) / 2.0 : arr[arr.size/2]).to_i

num = arr_mid - arr_size/2

arr.each_with_index do |n, i|
   cnt += ((num+i) - n).abs
end

p cnt