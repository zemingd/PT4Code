require 'pp'

# サイズが H, W の文字の2次元配列を返却する
def gets_HW_char
  h, w = gets.split.map(&:to_i)
  board = h.times.map { gets.chomp.chars }
  return h, w, board
end

H, W, b = gets_HW_char

# 4方向走査
H.times do |i|
  W.times do |j|
    if b[i][j] == "#"
      canDraw = false
      [
        [-1,  0], # 上
        [ 1,  0], # 下
        [ 0, -1], # 左
        [ 0,  1], # 右
      ].each do |di, dj|
        if 0 <= i + di && i + di < H && 0 <= j + dj && j + dj < W
          canDraw = true if b[i + di][j + dj] == "#"
        end
      end

      unless canDraw
        puts "No"
        exit
      end
    end
  end
end
puts "Yes"
