n, d = gets.split.map(&:to_i)
dots = []
n.times do
  dots.push(gets.split.map(&:to_i))
end

count = 0
dot_pairs = dots.combination(2).to_a
sq = []
(1..40).each do |j|
  sq << j**2
end

dot_pairs.each do |pair|
  sum = 0
  (0...d).each do |i|
    sum += (pair[0][i] - pair[1][i])**2
  end
  if Math.sqrt(sum) % 1 == 0
    count += 1
  end
end

puts count