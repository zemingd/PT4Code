n = gets.to_i
t,a = gets.split("").map!{|i| i.to_i}
h = gets.split("").map!{|i| to_i}
dif = 50;num = 0
n.times do |i|
  b = t - 0.006*h[i]
  if (b - a).abs < dif 
   dif = (b-a).abs 
   num = i +1 
  end
end
puts num
end
