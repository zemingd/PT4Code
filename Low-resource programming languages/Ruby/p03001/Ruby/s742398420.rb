w, h, x, y = gets.split(" ").map(&:to_f)
if w / 2 == x && h / 2 == y
  puts "#{w * h / 2} 1"
else
  puts "#{w * h / 2} 0"
end