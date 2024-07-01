require 'pp'
# サイズが H, W の文字の2次元配列を返却する
def gets_HW_char
  h, w = gets.split.map(&:to_i)
  board = h.times.map { gets.chomp.chars }
  return h, w, board
end

H, W, b = gets_HW_char

b1 = []
b.each do |row|
  b1.push(row) if row.include?("#")
end

b2 = []
b1.transpose.each do |line|
  b2.push(line) if line.include?("#")
end

b2.transpose.each do |row|
  puts row.join
end
