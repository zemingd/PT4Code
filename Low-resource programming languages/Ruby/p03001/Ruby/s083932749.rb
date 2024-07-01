w, h, x, y = gets.chomp.split.map(&:to_i)

half = w*h/2.0

if w/2.0 == x && h/2.0 == y
  puts "#{half} 1"
else
  puts "#{half} 0"
end
