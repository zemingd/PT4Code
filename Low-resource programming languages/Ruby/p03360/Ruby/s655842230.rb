a,b,c = gets.split(" ").map!{|i| i.to_i}
k = gets.to_i
other = 0
max = 0
if a >=  b and a >= c
  max = a; other = b+c
elsif b >= a and b >= c
  max = b;other = a+c
else max = c;other = a+b
end
k.times do |k|
  max = max*2
end
puts max + other
