n = gets.to_i
sp = []
n.times do
  sp.push gets.chomp.split
end
h = Hash.new([])
sp.each_index do |i|
  s = sp[i].first
  p = sp[i].last.to_i
  h[s] += [[p, i + 1]]
end
sh = h.sort
sh.each do |e|
  pi = e.last
  pi.sort_by(&:first).reverse_each do |p|
    puts p.last
  end
end
