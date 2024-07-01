n = gets.to_i
elem = []
n.times do
  elem << gets.chomp
end
res = []
i = 0
elem.group_by(&:itself).values.each do |v|
  if v.size > i
    res = []
    res << v[0]
    i = v.size
  elsif v.size == i
    res << v[0]
  end
end
puts res.sort.join("\n")