require 'pp'
n, m = STDIN.gets.split(" ").map(&:to_i)
xs = STDIN.gets.split(" ").map(&:to_i).sort

ds = []
for i in 0...(xs.size-1)
  ds << xs[i+1] - xs[i]
end

counts = m - n
res = 0
ds = ds.sort
puts ds[0, counts].reduce(:+)
# for _ in 0...counts
#   pp ds
#
#   min, i = ds.each_with_index.min  
#   res += min
#
#   if i == 0
#     ds.shift
#     next
#   end
#
#   newds = []
#   for j in 0...(ds.size-1)
#     if j < i-1
#       newds << ds[j]
#     elsif j == i-1
#       newds << ds[j] + ds[j+1]
#     else
#       newds << ds[j+1]
#     end
#   end
#
#   ds = newds
# end
#
# puts res
