n = gets.chomp.to_i

ss = []
n.times do
  ss.push gets.chomp
end

h = Hash.new(0)
ss.each do |s|
  h[s] += 1
end

m = h.max{ |x, y| x[1] <=> y[1] }
n = m[1]

as = []
h.each do |k, v|
  as.push k if v == n
end

as.sort.each do |a|
  puts a
end
