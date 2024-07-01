w, h, n = gets.chomp.split.map(&:to_i)
x_l = y_d = 0
x_r = w
y_u = h

while x, y, a = gets.chomp.split.map(&:to_i)
  if a == 1
    x_l = x
  elsif a == 2
    x_r = x
  elsif a == 3
    y_d = y
  else
    y_u = y
  end
end

puts (x_r - x_r) * (y_u - y_d)