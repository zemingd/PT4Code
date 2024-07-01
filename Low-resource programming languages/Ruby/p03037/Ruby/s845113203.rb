N,M = gets.split.map(&:to_i)
l = []
r = []
M.times do |i|
    l[i],r[i] = gets.split.map(&:to_i)
end
l_max = l.max
r_min = r.min

puts r_min-l_max+1