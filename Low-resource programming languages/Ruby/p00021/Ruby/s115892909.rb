class Vector
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def cross(v)
    return @x * v.y - @y * v.x
  end

  def self.minus(v1, v2)
    return Vector.new(v1.x - v2.x, v1.y - v2.y)
  end
end

n = gets.to_i
n.times do
  line = gets
  x1, y1, x2, y2, x3, y3, x4, y4 = line.split.map{|i| i.to_f}
  a1 = Vector.new(x1, y1)
  a2 = Vector.new(x2, y2)
  b1 = Vector.new(x3, y3)
  b2 = Vector.new(x4, y4)
  val = Vector.minus(a1, a2).cross(Vector.minus(b1, b2))
  if val == 0.0
    puts "YES"
  else
    puts "NO"
  end
end