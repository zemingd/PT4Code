n,x = gets.split(" ").map!{|i| i.to_i}
min = 0
n.times do 
  a = gets.to_i
  x -= a
  if a < min or n == 0
    min = a
  end
end
if x == 0
  puts n
else puts x/min + n
end
