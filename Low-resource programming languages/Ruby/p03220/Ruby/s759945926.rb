n = gets.to_i
t,a = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

av_arr = []
n.times do |i|
  av_arr << (t - arr[i] * 0.006)
end

dis_arr = []
av_arr.each do |v|
  dis_arr << (a - v).abs
end

p dis_arr.index(dis_arr.min) + 1
