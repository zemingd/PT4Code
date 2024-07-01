n,x = gets.split(" ").map!{|i| i.to_i}
min = 0
n.times do |h|
  a = gets.to_i
  x -= a
  if a < min or h == 0
    min = a
  end
end
puts x/min + n