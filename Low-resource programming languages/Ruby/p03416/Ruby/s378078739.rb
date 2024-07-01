start,last = gets.split(" ").map(&:to_i)
count=0
(start..last).each do |n|
     k = n.to_s
     count+=1  if k == k.reverse
end
puts count