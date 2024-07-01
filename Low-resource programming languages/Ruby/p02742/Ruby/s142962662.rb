h, w = gets.split.map(&:to_i)
all = h * w
if h == 1 || w == 1
  puts 1
else
  puts all % 2 == 0 ? all / 2 : all / 2 + 1
end
