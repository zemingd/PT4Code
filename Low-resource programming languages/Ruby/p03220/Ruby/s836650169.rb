n = gets.chomp.to_i
t, a = gets.chomp.split(' ').map(&:to_i)
hs = gets.chomp.split(' ').map(&:to_i)

INF = 100_000_000

idx = -1
diff = INF
hs.each.with_index(1) do |x, i|
  tp = t - x  * 0.006
  c_diff = (a - tp).abs
  if c_diff < diff
    diff = c_diff
    idx = i
  end
end
puts idx
