w, h, x, y, r = gets.split.map(&:to_i)

left_of_circle = x - r
right_of_circle = x + r
top_of_circle = y + r
bottom_of_circle = y - r

if left_of_circle >= 0 && right_of_circle <= w &&
   top_of_circle <= h && bottom_of_circle >= 0
  puts 'Yes'
else
  puts 'No'
end
