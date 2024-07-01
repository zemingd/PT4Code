w, h, n = gets.chomp.split().map(&:to_i)

grouped_dots = {1 => [], 2 => [], 3 => [], 4 => []}

n.times do
  dot = gets.chomp.split().map(&:to_i)
  if dot[-1] == 1 || dot[-1] == 2
    grouped_dots[dot[-1]].push(dot[0])
  else
    grouped_dots[dot[-1]].push(dot[1])
  end
end

x_min = grouped_dots[1].max || 0
x_max = grouped_dots[2].min || w
y_min = grouped_dots[3].max || 0
y_max = grouped_dots[4].min || h
x = x_max - x_min
y = y_max - y_min
if x < 0 || y < 0
  puts(0) 
else
  puts(x * y)
end
