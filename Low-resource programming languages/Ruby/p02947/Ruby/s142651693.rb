n=gets.to_i
sN = []
n.times do
  sN << gets.chomp.chars.sort.join
end
puts (n - sN.uniq.count)