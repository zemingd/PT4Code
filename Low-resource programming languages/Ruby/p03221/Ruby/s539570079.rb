n, m = gets.chomp.split.map(&:to_i)

py = Array.new(m)
m.times do |i|
  py[i] = gets.chomp.split.map(&:to_i)
end

for i in 1..n do
  py.select { |p, y| p == i }.sort { |a, b| a[1] <=> b[1] }.each_with_index do |aa, m|
    m += 1
    aa << m
  end
end

py.each do |pp, yy, ii|
  puts pp.to_s.rjust(6, "0") + ii.to_s.rjust(6, "0")
end
