w, h, x, y, r = gets.split.map(&:to_i)
w -= r
h -= r
stat = (0 <= x && x <= w && 0 <= y && y <= h) ? 'Yes' : 'No'
puts stat