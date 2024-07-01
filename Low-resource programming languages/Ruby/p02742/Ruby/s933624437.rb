h, w = gets.chomp.split.map(&:to_f)
if h == w
  puts (h * w / 2).ceil
else
  if h < w
    puts (w / h).ceil * h.to_i + (h / 2).ceil
  else
    puts (h / w).ceil * w.to_i + (w / 2).ceil
  end
end