w, h , n = gets.split.map(&:to_i)

to = h
bo = 0
ri = w
le = 0

n.times {
  x, y, a = gets.split.map(&:to_i)
  if a == 1 && le < x
    le = x
  elsif a == 2 && ri > x
    ri = x
  elsif a == 3 && y > bo
    bo = y
  elsif a  == 4 && y < to
    to = y
  end
}

puts [0, (ri-le)].max * [0, (to-bo)].max
