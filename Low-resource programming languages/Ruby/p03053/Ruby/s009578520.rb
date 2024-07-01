H, W = gets.split.map(&:to_i)
a = H.times.map {gets.chomp}

Area = W * H

$field = a.map {|row| row.chars.map {|e| (e == ".") ? 0 : 1}}

class Step
  @@count = 0
  @@max_step = 0
  
  def initialize(x, y, step = 0)
    @x = x
    @y = y
    @step = step
    
    @@count += 1
    @@max_step = step if step > @@max_step
  end
  
  def dir(i)
    dx, dy = [[1, 0], [0, -1], [-1, 0], [0, 1]][i]
    x = @x + dx
    y = @y + dy
    if x < 0 || x >= W || y < 0 || y >= H
      nil
    else
      $field[y][x].zero? ? Step.new(x, y, @step + 1) : nil
    end
  end
  
  def set
    $field[@y][@x] = 1
    self
  end
  
  def self.last?
    @@count >= Area
  end
  
  def self.number
    @@max_step
  end
end


q = []

H.times do |y|
  W.times {|x| q << Step.new(x, y) unless $field[y][x].zero?}
end

until Step.last?
  now = q.shift
  4.times do |i|
    nxt = now.dir(i)
    q << nxt.set if nxt
  end
end

puts Step.number