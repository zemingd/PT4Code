n = gets.to_i
l = gets.split.map!{|i| i.to_i}
com = l.combination(3).to_a
i = 0
count = 0
while i < com.length do
  if com[i][0] < com[i][1] + com[i][2] && com[i][0] > (com[i][1] -com[i][2]).abs
    count += 1
  end
  i += 1
end
puts count