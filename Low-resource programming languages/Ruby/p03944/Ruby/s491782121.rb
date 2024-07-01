w, h, n = gets.split.map(&:to_i)
# ai=1 のときは長方形の x<xi をみたす領域
# ai=2 のときは長方形の x>xi をみたす領域
# ai=3 のときは長方形の y<yi をみたす領域
# ai=4 のときは長方形の y>yi をみたす領域
x = [0, w]
y = [0, h]
n.times.map do
  a, b, c = gets.split.map(&:to_i)
  case c
  when 1
    x[0] = [x[0], a].max
  when 2
    x[1] = [x[1], a].min
  when 3
    y[0] = [y[0], b].max
  when 4
    y[1] = [y[1], b].min
  end
end
puts [x.reverse.inject(&:-), 0].max * [y.reverse.inject(&:-), 0].max
