w, h, n = gets.split.map(&:to_i)
spots = []
n.times { spots << gets.split.map(&:to_i) }
right = w
left = 0
up = h
down = 0
spots.each do |x, y, direction|
  case direction
  when 1
    left = [left, x].max
  when 2
    right = [right, x].min
  when 3
    down = [down, y].max
  when 4
    up = [up, y].min
  end
end
puts [(right - left), 0].max * [(up - down), 0].max
