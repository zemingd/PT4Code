X, Y, Z, K = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i).sort.reverse
b = gets.split(' ').map(&:to_i).sort.reverse
c = gets.split(' ').map(&:to_i).sort.reverse

e = []
score = []

a.each do |i|
  b.each do |j|
    e.push(i + j)
  end
end

e.sort.reverse[0, K].each do |i|
  c.each do |j|
    score.push(i + j)
  end
end

K.times do |i|
  puts score[i]
end