n, m = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

link = Hash.new([])
m.times do |i|
  a, b = gets.split.map(&:to_i)
  if hs[a-1] <= hs[b-1]
   link[a] += [b]
  end
  if hs[a-1] >= hs[b-1]
    link[b] += [a]
  end
end

puts n - link.count