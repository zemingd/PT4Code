n, d = gets.chomp.split(' ').map(&:to_i)
x = []
n.times do
  x << gets.chomp.split(' ').map(&:to_i)
end

c = 0
dist = 0
x.combination(2).to_a.each do |comb|
  d.times { |i| dist += (comb[0][i] - comb[1][i]) ** 2 }
  c += 1 if Math.sqrt(dist) % 1 == 0
  dist = 0
end

print(c)
