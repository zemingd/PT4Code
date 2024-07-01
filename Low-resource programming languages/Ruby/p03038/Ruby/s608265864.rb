gets
aaa = gets&.split&.map(&:to_i).sort
while g = gets&.split&.map(&:to_i)
  b = g[0]
  c = g[1]
  b.times do |i|
    if aaa[i] < c
      aaa[i] = c
    end
  end
  aaa.sort!
end
p aaa.inject(:+)
