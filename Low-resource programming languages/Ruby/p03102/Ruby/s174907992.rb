n, m, c = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
puts (n.times.count do
  gets.split.map.with_index{|e, idx| e.to_i * bs[idx]}.inject(&:+) + c > 0
end)
