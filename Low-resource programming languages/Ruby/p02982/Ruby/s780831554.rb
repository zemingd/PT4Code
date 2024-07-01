N, D = gets.split(" ").map(&:to_i)
X = []
N.times do
  X << gets.split(" ").map(&:to_i)
end

def ok(ar1, ar2)
  sum = 0
  ar1.zip(ar2).each do |a, b|
    sum += (a - b) ** 2
  end
  s = Math.sqrt(sum).to_i
  return s * s == sum
end

cnt = 0
(0...N).each do |i|
  (i + 1...N).each do |j|
    cnt += 1 if ok(X[i], X[j])
  end
end

puts cnt
