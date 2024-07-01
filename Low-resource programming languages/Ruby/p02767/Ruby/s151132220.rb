N = gets.to_i
X = gets.split.map(&:to_i)

avg = X.sum / N
sumA = 0
sumB = 0
N.times do |i|
  sumA += (X[i] - avg.to_i - 1) ** 2
  sumB += (X[i] - avg.to_i) ** 2
end
p [sumA, sumB].min
