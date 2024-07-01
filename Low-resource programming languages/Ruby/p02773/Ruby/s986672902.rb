n = gets.to_i
s = []
name = []
ind = []
n.times do |i|
  s[i] = gets
  if (name.include?(s[i]))
    ind[name.index(s[i])] += 1
  else
    ind.push(0)
    name.push(s[i])
  end
end
king_name = []
name.size.times do |i|
  if ind[i] == ind.max
    king_name.push(name[i])
  end
end

king_name.sort!
king_name.size.times do |i|
  puts (king_name[i])
end