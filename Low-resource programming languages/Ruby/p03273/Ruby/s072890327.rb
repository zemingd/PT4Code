H, W = gets.chomp.split.map(&:to_i)

board = []
H.times do
  l = gets.chomp
  res = false
  for i in 0..(W - 1) do
    res = true if l[i] == "#"
  end
  board << l if res
end

col = []
for i in 0..(W - 1) do
  res = false
  for j in 0..(board.size - 1) do
    res = true if board[j][i] == "#"
  end
  col[i] = res
end

ans = []
for i in 0..(board.size - 1) do
  l = ""
  for j in 0..(W - 1) do
    l += board[i][j] if col[j]
  end
  ans << l
end

puts ans
  