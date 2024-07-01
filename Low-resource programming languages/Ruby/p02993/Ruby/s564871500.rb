require 'set'

class Group
  attr_accessor :x_list, :y_list
  def initialize
    @x_list = Set.new
    @y_list = Set.new
  end
end

class Pos
  attr_accessor :x, :y
  def initialize(array)
    @x = array[0]
    @y = array[1]
  end
end

def x_push(pos_list)
  pos_list.each do |pos|
    x_pos_list = @pos_hash_by_x[pos.x]
    next if x_pos_list.nil?
    @group.x_list << pos.x
    @pos_hash_by_x.delete(pos.x)
    y_push(x_pos_list)
  end
end

def y_push(pos_list)
  pos_list.each do |pos|
    y_pos_list = @pos_hash_by_y[pos.y]
    next if y_pos_list.nil?
    @group.y_list << pos.y
    @pos_hash_by_y.delete(pos.y)
    x_push(y_pos_list)
  end
end

N = gets.chop.to_i

@pos_list = []
N.times { @pos_list << Pos.new(gets.chop.split.map(&:to_i)) }
@pos_hash_by_x = @pos_list.group_by(&:x)
@pos_hash_by_y = @pos_list.group_by(&:y)

@groups = []
until @pos_hash_by_x.empty?
  key = @pos_hash_by_x.keys[0]
  x_pos_list = @pos_hash_by_x[key]
  @pos_hash_by_x.delete(key)
  @group = Group.new
  @group.x_list = [x_pos_list[0].x]
  y_push(x_pos_list)
  @groups << @group
end

puts @groups.map { |g| g.x_list.size * g.y_list.size }.inject(0, &:+) - N
