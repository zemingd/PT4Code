class Problem
  attr_accessor :a, :b, :n, :m, :h, :w

  def initialize
    @n = gets.to_s.to_i
    @a = Array.new(n){ gets.to_s.to_i }
  end

  def solve
    a.inject(1, &:lcm)
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end
