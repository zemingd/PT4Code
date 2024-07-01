class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @r = gets.to_s.to_i
  end

  def solve
    return "AGC" if 2800 <= r
    return "ARC" if 1200 <= r
    "ABC"
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end
