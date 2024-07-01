input = gets
a1 = input.split(" ")
a2 = a1.map{|item| item.to_i}
if a2[0] >= 13 then
  p a2[1]
elsif a2[0] >= 6 then
  p a2[1]/2
else
  p 0
end