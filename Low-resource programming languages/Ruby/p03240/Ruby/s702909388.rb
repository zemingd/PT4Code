n = gets.to_i
points = []
n.times do
  points << gets.chomp.split(' ').map(&:to_i)
end
points.delete_if {|point| point[2] == 0}
x = 0
while x <= 100
  y = 0
  while y <= 100
    h = (points[0][0] - x).abs + (points[0][1] - y).abs + points[0][2]
    z = 1
    while z < points.size
      if h != (points[z][0] - x).abs + (points[z][1] - y).abs + points[z][2]
        break
      end
      z += 1
    end
    if z == points.size
      puts "#{x} #{y} #{h}"
      exit
    end
    y += 1
  end
  x += 1
end
