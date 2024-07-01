N = gets.to_i

points = []
0.upto(100) do |i|
  0.upto(100) do |j|
    points.push([i, j, -1])
  end
end

N.times do
  x, y, h = gets.split(' ').map(&:to_i)
  if h > 0
    newpoints = []
    points.each do |c|
      height = h + (c[0] - x).abs + (c[1] - y).abs
      if c[2] == -1 || c[2] == height
        newpoints.push([c[0], c[1], height])
      end
    end
    points = newpoints
  else
    points.delete_if{|c| c[2] > (c[0] - x).abs + (c[1] - y).abs}
  end
  break if points.size == 1
end

puts points[0].map(&:to_s).join(' ')