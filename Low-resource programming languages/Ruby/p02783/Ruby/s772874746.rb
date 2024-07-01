h,a = gets.split("").map!{|i|i.to_i}
sum = 1
while h < 0
  h = h - a
  sum += sum
end
puts sum