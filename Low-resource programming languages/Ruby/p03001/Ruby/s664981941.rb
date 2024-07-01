w, h, x, y = gets.split.map(&:to_i)

if w.to_f / 2 == x && h.to_f / 2 == y
  puts "#{w.to_f * h.to_f / 2} 1"
else
  puts "#{w.to_f * h.to_f / 2} 0"
end