W,H,N = gets.chomp.split(" ").map(&:to_i)
x,y,a = N.times.map{gets.split.map(&:to_i)}.transpose
x0 = 0
y0 = 0
x1 = W
y1 = H
N.times do |i|
  if a[i] == 1
    x0 = x[i] if x0 < x[i]
  elsif a[i] == 2
    x1 = x[i] if x1 > x[i]
  elsif a[i] == 3
    y0 = y[i] if y0 < y[i]
  else
    y1 = y[i] if y1 > y[i]
  end
end
width = [x1 - x0,0].max
height = [y1 - y0,0].max
puts width*height