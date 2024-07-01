N = gets.to_i
POINTS = N.times.map { gets.split.map(&:to_i) }
X = 0
Y = 1
H = 2

0.upto(100) do |y|
  0.upto(100) do |x|
    heights = POINTS.map do |point|
      (point[X] - x).abs + (point[Y] - y).abs + point[H]
    end
    heights.uniq!
    if heights.size == 1
      puts "#{x} #{y} #{heights[0]}"
      exit
    end
  end
end