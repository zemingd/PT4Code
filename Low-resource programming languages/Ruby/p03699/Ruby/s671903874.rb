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
    points.each do |i|
      if total_point - i % 10 != 0
        total_point -= i
        points.delete_at(points.index(i))
        break
      end
    end
    total_point = 0
    break
  else
    break
  end
end

puts total_point