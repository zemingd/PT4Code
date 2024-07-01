def max(a,b); a < b ? b : a; end
def min(a,b); a < b ? a : b; end

class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)

  def initialize
    @n = gets.to_s.to_i
  end

  def solve
    n >= 30
  end
  
  def show(ans)
    puts ans ? "Yes" : "No"
  end
end

Problem.new.instance_eval do
  show(solve)
end
