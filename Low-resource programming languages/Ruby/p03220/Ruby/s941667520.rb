n = gets.to_i
t,a = gets.split("").map!{|i| i.to_i}
h = gets.split("").map!{|i| i.to_i}
dif = 50;num = 0;i = 1
while i <= n do
  b = t - 0.006*h[i-1]
  if (b - a).abs < dif 
   dif = (b-a).abs 
   num = i - 1
  end
  i = i + 1
end
puts num 
