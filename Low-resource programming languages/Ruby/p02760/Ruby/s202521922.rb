A = []
C = []
ans = "No"
3.times do
  A << gets.chomp.split(' ').map(&:to_i)
  C << [0,0,0]
end
n = gets.to_i
n.times do
  b = gets.to_i
  3.times do |i|
    3.times do |j|
      C[i][j] = 1 if A[i][j] == b
    end
  end
end

# 横ビンゴチェック
C.each do |c|
  ans = "Yes" if c.all?(1)
end

# たてビンゴチェック
3.times do |i|
  ans = "Yes" if [C[0][i],C[1][i],C[2][i]].all?(1)
end

# ななめ
ans = "Yes" if [C[0][0], C[1][1], C[2][2]].all?(1)
ans = "Yes" if [C[2][2], C[1][1], C[0][0]].all?(1)
puts ans