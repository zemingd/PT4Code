h, w = gets.split.map(&:to_i)

if h == 1 || w == 1
  puts 1
  exit
end

if w.even?
  first_line = w / 2
  second_line = w / 2
else
  first_line = (w / 2) + 1
  second_line = w / 2
end

if h.even?
  first_line_nums = h / 2
  second_line_nums = h / 2
else
  first_line_nums = (h / 2) + 1
  second_line_nums = h / 2
end

puts first_line * first_line_nums + second_line * second_line_nums
