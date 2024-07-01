n = gets.to_i
v = gets.chomp.split(" ")
lists = [[], []]
need_step = 0

v.length.times do |i|
  if i%2 == 0
    lists[0].push(v[i].to_i)
  else
    lists[1].push(v[i].to_i)
  end
end

counters = []
for alist in lists
  counter = {}
  for i in alist.uniq
    counter[i] = (alist.count(i))
  end
  counters.push(counter)
end


if counters[0].length == 1 && counters[1].length == 1 && counters[0].keys == counters[1].keys
   puts(lists[i].length)
   exit()
end


tmp = []
lists.length.times do |i|
#  print(lists[i],"\n")
#  print(counters[i],"\n")
  counts = counters[i].sort.reverse
  tmp.push(counts.pop)

  for j in counts
      need_step += j[1]
  end

end


puts need_step