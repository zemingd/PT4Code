N, D = gets.split.map(&:to_i)
X = []
N.times do
  X << gets.split.map(&:to_i)
end

ans = 0

N.times do |i|
  ((i + 1)...N).each do |j|
    dist = X[i].zip(X[j]).map { |y, z| (y - z) ** 2 }.inject(:+)

    d = Math.sqrt(dist)
    e = d.ceil

    ans += 1 if d - e == 0
  end
end

puts ans
