n, m = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

# link = Hash.new([])
list = Array.new(n, 0)
m.times do |i|
  a, b = gets.split.map(&:to_i)
  if hs[a-1] <= hs[b-1]
    #  link[a] += [b]
    list[a-1] += 1
  end
  if hs[a-1] >= hs[b-1]
    # link[b] += [a]
    list[b-1] += 1
  end
end

# puts n - link.count
puts list.count(0)