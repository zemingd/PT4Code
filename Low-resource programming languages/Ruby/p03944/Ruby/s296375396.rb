W, H, N = gets.split.map(&:to_i)
I = readlines.map{|l| l.split.map &:to_i}

x0 = y0 = 0
x1 = W
y1 = H

def out; p 0; exit; end

I.each do |x, y, a|
  #p x: x, y: y, a: a
  case a
  when 1
    out if x >= x1
    x0 = x if (x0..x1) === x
  when 2
    out if x <= x0
    x1 = x if (x0..x1) === x
  when 3
    out if y >= y1
    y0 = y if (y0..y1) === y
  when 4
    out if y <= y0
    y1 = y if (y0..y1) === y
  end
  #p xy: [[x0, y0], [x1, y1]]
end

p((x1-x0)*(y1-y0))
