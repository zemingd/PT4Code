require 'ostruct'

h, w = gets.chomp.split.map(&:to_i)
map = (0...h).map { gets.chomp.chars }

max = 0
(0...h).each do |y|
  (0...w).each do |x|
    next if map[y][x] == '#'

    # 調査済みメモ
    arrived = (0...h).map { Array.new(w, nil) }

    queue = [ OpenStruct.new({ y: y, x: x, count: 0 }) ]
    while one = queue.shift

      # 調査済みとしてマーク
      arrived[one.y][one.x] = one.count

      # 最大値を更新
      max = [max, one.count].max

      # top
      tmp = OpenStruct.new({ y: one.y-1, x: one.x, count: one.count + 1})
      queue.push(tmp) if one.y-1 >= 0 && arrived[one.y-1][one.x].nil? && map[one.y-1][one.x] != '#'

      # bottom
      tmp = OpenStruct.new({ y: one.y+1, x: one.x, count: one.count + 1})
      queue.push(tmp) if one.y+1 < h && arrived[one.y+1][one.x].nil? && map[one.y+1][one.x] != '#'

      # right
      tmp = OpenStruct.new({ y: one.y, x: one.x+1, count: one.count + 1})
      queue.push(tmp) if one.x+1 < w && arrived[one.y][one.x+1].nil? && map[one.y][one.x+1] != '#'

      # left
      tmp = OpenStruct.new({ y: one.y, x: one.x-1, count: one.count + 1})
      queue.push(tmp) if one.x-1 >= 0 && arrived[one.y][one.x-1].nil? && map[one.y][one.x-1] != '#'
    end
  end
end

puts max