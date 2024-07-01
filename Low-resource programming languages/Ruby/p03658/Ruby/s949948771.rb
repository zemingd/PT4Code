n,k = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)
i = 0
k.times{
  j = l.index(l.max)
  i += l[j]
  l.delete_at(j)
}
print i