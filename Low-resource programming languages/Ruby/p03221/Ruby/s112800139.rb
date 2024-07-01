n, m = gets.chomp.split.map(&:to_i)

py = Array.new(m)
m.times do |i|
  py[i] = gets.chomp.split.map(&:to_i)
end

sort_no_max = Array.new(n, 1)
py.sort { |a, b| a[1] <=> b[1] }.each do |ppyy|
  p = ppyy[0] - 1
  ppyy << sort_no_max[p]
  sort_no_max[p] += 1
end

py.each do |pp, yy, ii|
  puts pp.to_s.rjust(6, "0") + ii.to_s.rjust(6, "0")
end
