N = gets.to_i

points = []
N.times do
  x, y, h = gets.split.map(&:to_i)
  points << [x, y, h]
end

0.upto(101) do |x|
  0.upto(101) do |y|
    sum = []
    points.select {|p| p[2] > 0}.each do |p|
      sum << p[2] + (p[0] - x).abs + (p[1] - y).abs
    end

    # puts "#{points} x: #{x} y: #{y} => #{sum}"

    if sum.uniq.size == 1
      satisfied = true
      points.select {|p| p[2] == 0}.each do |p|
        if sum.first > (p[0] - x).abs + (p[1] - y).abs
          satisfied = false
          break
        end
      end
      if satisfied
        puts "#{x} #{y} #{sum.first}"
        exit 0
      end
    end
  end
end
