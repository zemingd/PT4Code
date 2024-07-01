class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @a,@b,@c=gets.to_s.split.map{ |v| v.to_i }
  end
 
  def solve
    q1 && q2
  end
 
  def q1
    4 * a * b < (c - a - b) ** 2
  end
 
  def q2
    0 < c - a - b
  end
 
  def show(ans)
    puts ans ? "Yes" : "No"
  end
end
 
Problem.new.instance_eval do
  show(solve)
end