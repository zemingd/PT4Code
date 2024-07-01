class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @d,@t,@s = gets.split.map(&:to_i)
  end

  def solve
    d <= t * s
  end

  def show(ans)
    puts ans ? "Yes" : "No"
  end
end

Problem.new.instance_eval do
  show(solve)
end