x = gets.chomp.split(" ").map(&:to_i)
on = Array.new()
(x.max).times{|i| on[i] = on[i].to_i + 0}
for i in x[0]..x[1] do
  on[i] = on[i].to_i + 1
end
for i in x[2]..x[3] do
  on[i] = on[i].to_i + 1
end
#puts on.join(' ')
puts on.count(2)-1