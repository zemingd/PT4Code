require 'pp'

n = gets.to_i

d = gets.split.map(&:to_i)

if d[0] != 0
  p 0
  exit
end

if d[1..-1].any?{|dd|dd == 0}
  p 0
  exit
end

d2 = d[1..-1]

d3 = d2.group_by{|x|x}.map{|k,v|[k,v.size]}.sort_by{|x|x[0]}
#[距離, 個数]
# p d3
ans = 1
(d3.size-1).times do |i|
  ans *= d3[i][1] ** d3[i+1][1]
end
p ans
# 2 0 24
