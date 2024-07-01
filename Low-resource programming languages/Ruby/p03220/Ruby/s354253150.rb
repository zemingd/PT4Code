n = gets.chomp.to_i
t, a = gets.chomp.split(" ").map(&:to_i)
hs = gets.chomp.split(" ").map(&:to_i)
ts = []
hs.each do |h, index|
  ts << (a - (t - h * 0.006)).abs
end
puts ts.index(ts.min) + 1