class Gate
  attr_reader :left, :right

  def initialize(left, right)
    @left, @right = left, right
  end

  def &(other)
    Gate.new([@left, other.left].max, [@right, other.right].min)
  end

  def size
    [@right - @left + 1, 0].max
  end
end

def prison(n, params)
  (params.map { |l, r| Gate.new(l, r) }.inject { |a, b| a & b } & Gate.new(1, n)).size
end

n, m = gets.split.map(&:to_i)
params = []
m.times{ params << gets.split.map(&:to_i) }

puts prison(n, params)