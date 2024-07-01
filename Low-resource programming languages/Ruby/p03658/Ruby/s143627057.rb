n,k = gets.split(" ").map!{|i| i.to_i}
l = gets.split(" ").map!{|j| j.to_i}
l.sort!
sum = 0
k.times do |i|
  sum += l[-1-i] 
end
puts sum
