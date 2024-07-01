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

x_min = grouped_dots[1].max.to_i
x_max = grouped_dots[2].min.to_i
y_min = grouped_dots[3].max.to_i
y_max = grouped_dots[4].min.to_i
x = x_max - x_min < 0 ? 0 : x_max - x_min
y = y_max - y_min < 0 ? 0 : y_max - y_min
puts(x * y)
