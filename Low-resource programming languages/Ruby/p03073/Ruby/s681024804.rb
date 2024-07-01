# frozen_string_literal: true

# なんこれ
tile = gets.chomp.chars
ans = 0
pre = tile[0]
(1...tile.size).each do |ti|
  if tile[ti] == pre
    tile[ti] = pre == '1' ? '0' : '1'
    ans += 1
  end
  pre = tile[ti]
end
puts ans
