n = gets.to_i
as = n.times.map{gets.to_i}
as.unshift(0)
flag = Array.new(n+1,false)
l = as[1]
flag[1] = true
cnt = 1
loop do
  l = as[l]
  break if flag[l] == true || flag[2] == true
  flag[l] = true
  cnt += 1
end
puts flag[2] == true ? cnt : -1
