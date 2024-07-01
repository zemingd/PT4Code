n = gets.to_i
aa = gets.split.map(&:to_i)

h = {}
aa.each.with_index(1) do |a, i|
  h[a] = i
end

hh = []
1.upto(n) do |i|
  hh << h[i]
end

puts hh.join(' ')