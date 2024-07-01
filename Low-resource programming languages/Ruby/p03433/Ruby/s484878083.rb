size = gets.chomp.split(" ").map(&:to_i)
h = size[0]
w = size[1]
board = []
h.times {
board.push(gets.chomp)
}

point = 0
diff = fill
while diff != 0 do
  point = point + diff
  diff = fill
end

if board[0][1] == "#" and board[1][0] == "#" then
  puts (-1)
else
  puts point
end

def needless(i,j)
  up_left = i  != 0 and j != 0 and board[i-1][j-1] == "."
  up = i != 0 and board[i-1][j] == "."
  up_right = i != 0 and j != w-1 and board[i-1][j+1] == "."
  left = j != 0 and board[i][j-1] == "."
  right = j  != w - 1 and board[i][j+1] == "."
  down_left = i != h-1 and j != 0 and board[i+1][j-1] == "."
  down = i != h-1 and board[i+1][j] == "."
  down_right = i != h-1 and j != w-1 and board[i+1][j+1] == "."
  return true if !up and !down and !left
  return true if !up and !down and !right
  return true if !left and !right and !up
  return true if !left and !right and !down
  return true if !left and !down and up_right
  return true if !left and !up and down_right
  return true if !right and !down and up_left
  return true if !right and !up and down_left
  return false
end

def fill
  num = 0
  for i in 0..(h-1) do
    for j in 0..(w-1) do
      next if i == 0 and j == 0
      next if i == (h-1) and j == (w-1)
      next if board[i][j] == "#"
      if needless(i,j) then
        board[i][j] = "#"
        num = num + 1
      end
    end
  end
  return num
end