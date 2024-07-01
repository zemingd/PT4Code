class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @s = gets.chomp
    @t = gets.chomp
  end

  def solve
    s == t.reverse
  end

  def show(ans)
    puts ans ? "YES" : "NO"
  end
end

Problem.new.instance_eval do
  show(solve)
end
