n = gets.to_i
p = gets.split.map(&:to_i)

num = 0
(n-2).times{ |i| num += 1 if [p[i],p[i+1],p[i+2]].sort[1] == p[i+1] }
puts num