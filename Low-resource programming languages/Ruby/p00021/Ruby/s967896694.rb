class Line
  # initialize with coordinates of 2 points which the line includes
  def initialize(x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  def slope
    # this is the 'a' from y=ax+b (we know 2 points)
    (@y1 - @y2).to_f / (@x1 - @x2)
  end

  attr_reader :x1, :y1, :x2, :y2

  def parallel_to?(other)
    # slope == other.slope
    # This is essentially the same thing, as comparing slopes, but might be better
    # to multiply instead of dividing (I'm trying this because I got wrong answer)
    (y1 - y2) * (other.x1 - other.x2) == (other.y1 - other.y2) * (x1 - x2)
  end
end

lines_enum = $stdin.each_line
n = lines_enum.next.chop.to_i

n.times do
  line = lines_enum.next.chop
  ax, ay, bx, by, cx, cy, dx, dy = line.split(' ').map(&:to_f)
  ab = Line.new(ax, ay, bx, by)
  cd = Line.new(cx, cy, dx, dy)
  puts ab.parallel_to?(cd) ? 'YES' : 'NO'
end