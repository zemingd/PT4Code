w, h, x, y = gets.chomp.split(' ').map(&:to_f)
if x == 0 || x == w || y == h || y == 0
  puts("#{h * w / 2} 0")
else
  area1 = [x * h, (w - x) * h].min
  area2 = [y * w, (h - y) * w].min
  if area1 == area2
    puts("#{area1} 1")
  else
    area3 = [area1, area2].max
    puts("#{area3} 0")
  end
end