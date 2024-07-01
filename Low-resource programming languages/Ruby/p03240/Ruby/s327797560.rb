X = 0
Y = 1
H = 2

N = gets.to_i
POINTS = N.times.map { gets.split.map(&:to_i) }
POSITIVE_POINTS = POINTS.select { |point| point[H] > 0 }
ZERO_POINTS = POINTS.select { |point| point[H].zero? }

0.upto(100) do |y|
  0.upto(100) do |x|
    heights = POSITIVE_POINTS.map do |point|
      (point[X] - x).abs + (point[Y] - y).abs + point[H]
    end
    heights.uniq!
    if heights.size == 1
      height = heights[0]
      if ZERO_POINTS.all? { |point| height - (point[X] - x).abs - (point[Y] - y).abs <= 0 }
        puts "#{x} #{y} #{height}"
        exit
      end
    end
  end
end