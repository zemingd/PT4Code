w, h, n = gets.split.map(&:to_i)
m = [0, w, 0, h]
n.times do |i|
  x, y, a = gets.split.map(&:to_i)
  m[0] = [m[0], x].max if a == 1
  m[1] = [m[1], x].min if a == 2
  m[2] = [m[2], y].max if a == 3
  m[3] = [m[3], y].min if a == 4
end
puts (m[1] - m[0]) > 0 && (m[3] - m[2]) > 0 ? (m[1] - m[0]) * (m[3] - m[2]) : 0
