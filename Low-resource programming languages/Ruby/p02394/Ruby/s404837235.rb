w, h, x, y, r = gets.split.map(&:to_i)
right = x + r
left = x - r
top = y + r
bottom = y - r

if right <= w && left >= 0 && top <= h && bottom >= 0
  puts 'Yes'
else
  puts 'No'
end