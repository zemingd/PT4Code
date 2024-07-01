
inputs = gets
arr_size = inputs.to_i
inputs = gets
arr = inputs.split(" ")
arr.map!(&:to_i)
cnt = 0

arr_mid = (arr[arr_size-1] - arr[0]).abs

arr.each_with_index do |n, i|
   cnt += ((num+i) - n).abs
end

p cnt
