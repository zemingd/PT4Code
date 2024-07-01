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
  # center_h = h[0] + (x[0] - center_x).abs + (y[0] - center_y).abs
  debug = false

  center_h = 0
  n.times do |i|
    if h[i] > 0
      center_h = h[i] + (x[i] - center_x).abs + (y[i] - center_y).abs
      p ['==', center_x, center_y, center_h] if debug
      break
    end
  end

  return false unless center_h >= 1

  n.times do |i|
    should_center_h = h[i] + (x[i] - center_x).abs + (y[i] - center_y).abs
    if h[i] > 0
      if center_h != should_center_h
        p ['a ', center_x, center_y, center_h, x[i], y[i], should_center_h] if debug
        return false
      end
    else # h[i] == 0
      if center_h > should_center_h
        p ['b ', center_x, center_y, center_h, x[i], y[i], should_center_h] if debug
        return false
      end
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
