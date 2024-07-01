class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @n,@c = gets.split.map(&:to_i)
    @s,@t,@ch = Array.new(n){ gets.split.map(&:to_i) }.transpose
  end

  def solve
    a = Array.new(200_001, 0)
    n.times do |i|
      a[s[i]*2-1] += 1
      a[t[i]*2] -= 1
    end
    cs = a.each_with_object([0]) { |v, h| h << h[-1] + v }
    cs.max
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end