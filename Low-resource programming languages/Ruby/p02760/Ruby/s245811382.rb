grid = 3.times.map { gets.split.map(&:to_i) }
N = gets.to_i
B = N.times.map { gets.to_i }
board = Array.new(3) { Array.new(3, false) }
B.each do |b|
  3.times do |i|
    3.times do |j|
      if grid[i][j] == b
        board[i][j] = true
      end
    end
  end
end

if board.any? { |row| row.all?(&:itself) }
  puts 'Yes'
  exit 0
end

is_ok = (board[0][0] && board[1][0] && board[2][0]) ||
  (board[0][1] && board[1][1] && board[2][1]) ||
  (board[0][2] && board[1][2] && board[2][2]) ||
if is_ok
  puts 'Yes'
  exit 0
end

if board[0][0] && board[1][1] && board[2][2]
  puts 'Yes'
  exit 0
end

if board[2][0] && board[1][1] && board[0][2]
  puts 'Yes'
  exit 0
end

puts 'No'