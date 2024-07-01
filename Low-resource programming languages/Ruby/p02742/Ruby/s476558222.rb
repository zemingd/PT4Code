h, w = gets.split(" ").map(&:to_i)
puts (if h % 2 == 0 and w % 2 == 0
  w * h / 2
elsif h % 2 == 1 and w % 2 == 0
  w * (h / 2) + w/2
elsif h % 2 == 0 and w % 2 == 1
  h * (w / 2) + h/2
else
  w * h / 2 + w / 4 + h / 4 + 1
end)