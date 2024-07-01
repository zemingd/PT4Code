def main
  w, h, n = gets.split.map{|s| s.to_i}

  arr = []
  (0...n).each do |i|
    x, y, a = gets.split.map{|s| s.to_i}
    arr << Area.new(x, y, w, h, a)
  end

  require 'pp'
  puresum = arr.inject(0) {|sum, a| sum + a.area }
  subtract = 0
  (0...(arr.size - 1)).each do |i|
    subtract += arr[i].overlay(arr[i+1])
  end
  puts puresum - subtract
end

class Area
  attr_accessor :from, :to
  def initialize(x, y, limit_x, limit_y, a)
    case a
    when 1 then
      @from = Point.new(0, 0)
      @to = Point.new(x, limit_y)
    when 2 then
      @from = Point.new(x, 0)
      @to = Point.new(x, litmi_y)
    when 3 then
      @from = Point.new(0, 0)
      @to = Point.new(limit_x, y)
    when 4 then
      @from = Point.new(0, y)
      @to = Point.new(limit_x, limit_y)
    end
    @a = a
  end

  def overlay area
    if (@from.x..@to.x).include?(area.from.x) && (@from.y..@to.y).include?(area.from.y)
      minx = (@to.x - @from.x) > (area.to.x - area.from.x) ? (area.to.x - area.from.x) : (@to.x - @from.x)
      miny = (@to.y - @from.y) > (area.to.y - area.from.y)? (area.to.y - area.from.y) : (@to.y - @from.y)
      minx * miny
    else
      0
    end
  end

  def area
    (@to.x - @from.x) * (@to.y - @from.y)
  end
end


class Point
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
end

main
