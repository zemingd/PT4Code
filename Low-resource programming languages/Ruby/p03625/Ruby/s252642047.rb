N = gets.to_i
line = gets
data = line.split(" ")
data.map!{|i| i.to_i}
two = data.select{|item| data.count(item) >= 2}
if two.empty?
  p 0
else
  max = two.max
  if data.count(max) >= 4
    p max * max
  else
    two.delete(max)
    p max * two.max
  end
end