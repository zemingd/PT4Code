class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @x,@k,@d = gets.split.map(&:to_i)
    @a = x - k * d
    @b = x + k * d
    @i = -a / (d * 2)
    @c = calc(i)
    @j = i + 1
    @d = calc(j)
  end

  def solve
    return a.abs if a >= 0
    return b.abs if b <= 0
    if c.abs < d.abs
      return c.abs
    else
      return d.abs
    end
  end

  def calc(i)
    a + 2 * d * i
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end