w, h, x, y, r = gets.split(' ').map(&:to_i)
puts w >= x + r && h >= y + r ? 'Yes' : 'No'