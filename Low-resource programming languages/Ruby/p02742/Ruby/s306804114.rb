h, w = gets.split.map(&:to_i).sort
if h == 1
  puts 1
elsif h.odd? && w.odd?
  puts (h * w + 1) / 2
else
  puts h * w / 2
end
