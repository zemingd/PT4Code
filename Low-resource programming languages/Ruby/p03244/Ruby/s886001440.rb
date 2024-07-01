n = gets.to_i
v = gets.split.map(&:to_i)

l = v.length

x = Hash.new(0)
y = Hash.new(0)
v.each_with_index do |a, i|
  if i.even?
    x[a] += 1
  else
    y[a] += 1
  end
end

if x.length == 1 && y.length == 1
  if x == y
    puts x.values[0]
  else
    puts 0
  end
  exit
end

x_sort = x.sort{ |a, b| a[1] <=> b[1] }
y_sort = y.sort{ |a, b| a[1] <=> b[1] }

if x_sort.length == 1
  if x_sort[0][0] == y_sort[-1][0]
    puts l / 2 - y_sort[-2][1]
  else
    puts l / 2 - y_sort[-1][1]
  end
elsif y_sort.length == 1
  if y_sort[0][0] == x_sort[-1][0]
    puts l / 2 - x_sort[-2][1]
  else
    puts l / 2 - x_sort[-1][1]
  end
else
  puts [l - x_sort[-1][1] - y_sort[-2][1], l - y_sort[-1][1] - x_sort[-2][1], l - x_sort[-1][1] - y_sort[-1][1]].min
end
