h, w = gets.split.map(&:to_i)

if h.even?
  puts h * w / 2
else
  puts (h * w + 1) / 2
end
