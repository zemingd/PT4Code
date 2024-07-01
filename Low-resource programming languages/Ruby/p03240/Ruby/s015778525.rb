X = 0
Y = 1
H = 2

N = gets.to_i
GET_POINTS = N.times.map { gets.split.map(&:to_i) }
POINTS = GET_POINTS.select { |point| point[H] > 0 }

if POINTS.size.zero?
  puts "#{GET_POINTS[0][X]} #{GET_POINTS[0][Y]} #{GET_POINTS[0][H]}"
  exit
end

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
