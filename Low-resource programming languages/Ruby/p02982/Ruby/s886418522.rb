n, d = gets.split.map(&:to_i)
x = []
n.times do |i|
  x[i] = gets.split.map(&:to_i)
end
result = 0
c = x.combination(2).to_a
c.each do |pair|
  sq = 0
  d.times do |i|
    sq += (pair[0][i] - pair[1][i]) ** 2
  end
  result += 1 if sq == (sq ** (1/2.0)).to_i ** 2
end
puts result
