n = gets.chomp.to_i

x = []
y = []
h = []
n.times do
  xx, yy, hh = gets.chomp.split.map(&:to_i)
  x.push xx
  y.push yy
  h.push hh
end

def height(center_x, center_y, h, x, y, n)
  center_h = h[0] + (x[0] - center_x).abs + (y[0] - center_y).abs
  return false unless center_h >= 1

  n.times do |i|
    should_center_h = h[i] + (x[i] - center_x).abs + (y[i] - center_y).abs
    if center_h != should_center_h
      # p [center_x, center_y, x[i], y[i]]
      return false
    end
  end
  return center_h
end

101.times do |i|
  101.times do |j|
    if hei = height(i, j, h, x, y, n)
      puts "#{i} #{j} #{hei}"
      exit
    end
  end
end
