W, H, N = gets.split.map(&:to_i)

sx = 0
ex = W
sy = 0
ey = H

N.times do
  x, y, a = gets.split.map(&:to_i)

  case a
  when 1
    sx = [sx, x].max
  when 2
    ex = [ex, x].min
  when 3
    sy = [sy, y].max
  when 4
    ey = [ey, y].min
  end
end

dy = ey - sy
dx = ex - sx

if dy > 0 && dx > 0
  puts dy * dx
else
  puts 0
end
