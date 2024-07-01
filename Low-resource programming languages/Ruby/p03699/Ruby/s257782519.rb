n = gets.to_i
points = []
n.times do
  points << gets.to_i
end

points = points.sort
total_point = points.inject(:+)

loop do
  if points.size == 0
    break
  end

  if total_point % 10 == 0
    total_point -= points.shift
  else total_point % 10 != 0
    break
  end
end

puts total_point