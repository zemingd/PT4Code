# 空白区切の入力値を数値の配列で返す
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# 入力値を数値で返す
def gets_i()
  gets.chomp.to_i
end

def gets_n_array
  n = gets.chomp.to_i
  array = []
  n.times do
    array.push(gets.chomp.to_i)
  end
  return n, array
end

board = []
board.push(gets_i_list)
board.push(gets_i_list)
board.push(gets_i_list)

N, array = gets_n_array

bingo_list =
  board +
  board.transpose +
  [[board[0][0], board[1][1], board[2][2]]] +
  [[board[0][2], board[1][1], board[2][0]]]

require('pp')
pp bingo_list

bingo_list.each do |b|
  if array.include?(b[0]) && array.include?(b[1]) && array.include?(b[2])
    puts "Yes"
    exit
  end
end
puts "No"
