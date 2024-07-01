w, h, n = gets.split.map(&:to_i)
a = Array.new(n){gets.split.map(&:to_i)}
x0, y0, x1, y1 = 0, 0, w, h
n.times do |i|
  if a[i][2] == 1
    x0 = a[i][0] if x0 < a[i][0]
  elsif a[i][2] == 2
    x1 = a[i][0] if x1 > a[i][0]
  elsif a[i][2] == 3
    y0 = a[i][1] if y0 < a[i][1]
  elsif a[i][2] == 4
    y1 = a[i][1] if y1 > a[i][1]
  end
end
puts (x1 > x0 && y1 > y0 ? (x1 - x0) * (y1 - y0) : 0)