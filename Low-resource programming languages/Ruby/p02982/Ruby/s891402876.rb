N, D = gets.split.map(&:to_i)
x = []
N.times do |i|
  x[i] = gets.split.map(&:to_i)
end
ans = 0
for i in 0...N
  for j in (i+1)...N
    z = (0...D).inject(0){|sum, k| sum += (x[i][k] - x[j][k]).abs ** 2} ** 0.5
    ans += 1 if z % 1 == 0
  end
end
puts ans