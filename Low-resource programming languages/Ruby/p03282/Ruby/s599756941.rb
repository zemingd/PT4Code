class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @s = gets.chomp
    @k = gets.to_s.to_i
  end

  def solve
    i = s.index(/[^1]/)
    if k <= i
      return 1
    else
      return s[i]
    end
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end