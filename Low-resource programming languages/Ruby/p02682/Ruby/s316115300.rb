inputs = gets.chomp.split.map!(&:to_i)
a = 0
if inputs[0] > inputs[3] then
  a += inputs[3]
elsif inputs[0] <= inputs[3] && inputs[1] > (inputs[3] - inputs[0]) then
  a += inputs[0]
else inputs[0] <= inputs[3] && inputs[1] <= (inputs[3] - inputs[0]) && inputs[2] <= (inputs[3] - inputs[0] - inputs[1])
  a += (inputs[0] - (inputs[3] - inputs[0] - inputs[1]))
end

puts a