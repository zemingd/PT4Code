h, w = gets.split.map(&:to_i)
res = []
h.times do |i|
  res[i] = gets.chomp.chars
end
samej = []
w.times do |j|
  tmp = []
  h.times do |i|
    tmp << res[i][j]
  end
  samej << j if tmp.join == '.' * h
end
samei = []
h.times do |i|
  tmp = []
  w.times do |j|
    tmp << res[i][j]
  end
  samei << i if tmp.join == '.' * w
end
h.times do |i|
  line = []
  w.times do |j|
    print res[i][j] unless samei.include?(i) || samej.include?(j)
  end
  print "\n" unless samei.include?(i)
end
