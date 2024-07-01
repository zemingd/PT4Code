W, H, N = gets.split.map(&:to_i)
minX = 0
minY = 0
maxX = W
maxY = H

N.times do
    x, y, a = gets.split.map(&:to_i)
    case a
    when 1
        minX = x if minX < x
    when 2
        maxX = x if maxX > x
    when 3
        minY = y if minY < y
    when 4
        maxY = y if maxY > y
    end
end
ans = (maxX - minX) * (maxY - minY)
ans = 0  if maxX <= minX
ans = 0  if maxY <= minY

puts ans
