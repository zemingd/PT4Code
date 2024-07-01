W, H, N = gets.split.map(&:to_i)

xmax = 0
xmin = W
ymax = 0
ymin = H

N.times do
  
  x, y, a = gets.split.map(&:to_i)
  
  if a == 1
    xmax = x if xmax < x
  elsif a == 2
    xmin = x if xmin > x
  elsif a == 3
    ymax = y if ymax < y
  else 
    ymin = y if ymin > y
  end
end

if xmax > xmin or ymax > ymin
  puts 0
else
  puts (xmin - xmax)*(ymin - ymax)
end