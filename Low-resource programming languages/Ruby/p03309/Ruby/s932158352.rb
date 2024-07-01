
inputs = gets
arr_size = inputs.to_i
inputs = gets
arr = inputs.split(" ")
arr.map!(&:to_i)
cnt1 = 0
cnt2 = 0

arr_mid = (arr[arr_size-1] - arr[0]).abs
arr_median = (arr.size % 2).zero? ? arr[arr.size/2 - 1, 2].inject(:+) / 2.0 : arr[arr.size/2]


arr_ave = (arr.inject(0.0){|r,i| r+=i }/arr.size).to_i
num1 = arr_mid - arr_size/2
num2 = arr_median - arr_size/2

arr.each_with_index do |n, i|
  cnt1 += ((num1+i) - n).abs
  cnt2 += ((num2+i) - n).abs 
end

p cnt1 < cnt2 ? cnt1 : cnt2
