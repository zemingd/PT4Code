w, h, n = gets.split.map(&:to_i)
x = []
y = []
a = []
0.upto(n-1) do |i|
  x[i], y[i], a[i] = gets.split.map(&:to_i)
end
w0 = h0 = 0
0.upto(n-1) do |i|
  if a[i] == 1
    w0 = x[i] if w0 < x[i]
  elsif a[i] == 2
    w = x[i] if w > x[i]
  elsif a[i] == 3
    h0 = y[i] if h0 < y[i]
  elsif a[i] == 4
    h = y[i] if h > y[i]
  end
end
if w - w0 <= 0 || h - h0 <= 0
  puts 0
else
  puts (w - w0) * (h - h0)
end