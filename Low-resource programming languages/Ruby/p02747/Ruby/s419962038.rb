class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @s = gets.chomp
  end

  def solve
    s.match(/^(hi)+$/)
  end

  def show(ans)
    puts ans ? "Yes" : "No"
  end
end

Problem.new.instance_eval do
  show(solve)
end