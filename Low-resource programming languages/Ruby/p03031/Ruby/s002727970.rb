n, m = gets.chomp.split.map(&:to_i)
sw = []

m.times do
  _, *s = gets.chomp.split.map(&:to_i)
  sw << s
end

p = gets.chomp.split.map(&:to_i)
res = 0

0.step(2 ** n - 1) do |b| # n が小さいのでbit全探索
  on = 0
  m.times do |i|
    break if sw[i].map {|x| b & (1 << (x - 1)) }.count {|x| x > 0 } % 2 != p[i]
    on += 1
  end
  if on == m
    res += 1
  end
end
puts res