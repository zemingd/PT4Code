n = gets.to_i

list = []
order = 0
n.times do
  s, p = gets.chomp.split
  p = p.to_i
  
  order += 1
  
  list << [s, p, order]
end

list.sort! do |a, b|
  (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1])
end

list.each do |s, p, order|
  puts order
end