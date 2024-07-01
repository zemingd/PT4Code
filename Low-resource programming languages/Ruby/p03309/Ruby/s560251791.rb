
inputs = gets
arr_size = inputs.to_i
inputs = gets
arr = inputs.split(" ")
arr.map!(&:to_i)
cnt = 0
arr_ave = arr.inject(0.0){|r,i| r+=i }/arr.size.to_i

num = arr_ave - arr_size/2



arr.each_with_index do |n, i|
   cnt += ((num+i) - n).abs
end

p cnt