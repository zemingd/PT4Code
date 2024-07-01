N, M, C = gets.chomp.split(" ").map(&:to_i)
sources = []
correct = 0
B = gets.chomp.split(" ").map(&:to_i)
N.times do
  sources << gets.chomp.split(" ").map(&:to_i)
end
for i in 0...N
  point = 0
  for j in 0...M
    point += B[j] * sources[i][j]
    if j == M-1
      correct += 1 if point + C > 0
    end
  end
end
puts correct