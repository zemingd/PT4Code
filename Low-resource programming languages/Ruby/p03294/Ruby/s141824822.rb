n = gets.to_i
a = gets.split(" ");a.map!{|x|x.to_i}
sum = 0
for x in a do
  sum += x
end
puts sum - n