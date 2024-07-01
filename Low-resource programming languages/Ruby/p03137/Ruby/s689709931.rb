n,m = gets.split(" ").map!{|i| i.to_i}
if n => m 
  puts 0 
else
x = gets.split(" ").map!{|j| j.to_i}
  x.sort!
  y= []
(m-1).times do |k|
  a = (x[k] - x[k+1]).abs
  y.push(a)
end
y.sort!
min = 0
(m-n).times do |l|
  min += y[l]
end
puts min
end
