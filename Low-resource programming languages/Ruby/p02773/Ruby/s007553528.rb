n = gets.to_i
d = Hash.new(0)
n.times do
  d[gets.chomp] += 1
end
m = d.max[1]
l = []
d.each do |k, v|
  if v == m then
    l << k
  end
end
print l.sort.join("\n")