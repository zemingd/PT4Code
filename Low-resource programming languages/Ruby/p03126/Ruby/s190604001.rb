n,m=gets.chomp.split(" ").map(&:to_i)
ttl = []
n.times do |i|
  _, *ary = gets.chomp.split(" ").map(&:to_i)
  ttl << ary
end

sa = ttl[0]
ttl.each do |t|
  sa = sa & t
end

puts sa.size