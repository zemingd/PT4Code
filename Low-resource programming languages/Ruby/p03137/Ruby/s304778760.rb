n,m=gets.split.map(&:to_i)
x=gets.split.map(&:to_i).sort!
x_dis=Array.new
sum=0
(m-1).times.with_index{|i|
  x_dis << (x[i+1]-x[i]).abs
}
(x_dis.sort!.size-n+1).times.with_index{|i|
  sum+=x_dis[i]
}
puts sum
