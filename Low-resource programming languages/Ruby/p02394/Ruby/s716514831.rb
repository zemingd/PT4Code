w, h, x, y, r  = gets.split.map(&:to_i)

x1 = x - r
x2 = x + r
y1 = y - r
y2 = y + r

circle_in_range = x1.between?(0, w) && x2.between?(0, w) &&
                  y1.between?(0, h) && y2.between?(0, h)

if circle_in_range
  puts 'Yes'
else
  puts 'No'
end