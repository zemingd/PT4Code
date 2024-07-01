(X, Y, Z, K) = gets.split.map(&:to_i)

data = []

3.times do
  data << gets.split.map(&:to_i).sort!.reverse!
end

e = []
X.times do |i|
  Y.times do |j|
    e << data[0][i] +data[1][j]
  end
end
e.sort!.reverse![0...K]

e2 = []
e.each do |ed|
  Z.times do |i|
    e2 << ed + data[2][i]
  end
end

e2.sort!.reverse!.each_with_index do |d, idx|
  if idx == K
    break
  end
  puts d
end

