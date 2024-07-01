W, H, N = gets.split.map(&:to_i)
xs = Array.new(N)
ys = Array.new(N)
as = Array.new(N)
N.times do |i|
  xs[i], ys[i], as[i] = gets.split.map(&:to_i)
end

x1, x2 = 0, W
y1, y2 = 0, H
N.times do |i|
  case as[i]
  when 1
    x1 = [x1, xs[i]].max
  when 2
    x2 = [x2, xs[i]].min
  when 3
    y1 = [y1, ys[i]].max
  when 4
    y2 = [y2, ys[i]].min
  end
end

puts [(x2 - x1) * (y2 - y1), 0].max
