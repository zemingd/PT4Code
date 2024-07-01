class Problem
  attr_accessor :a, :b, :n, :m, :h, :w, :x, :y, :s ,:t

  def initialize
    @s = gets.chomp
    @t = gets.chomp
  end

  def solve
    @s = s.chars.sort.join
    @t = t.chars.sort.reverse.join
    s < t
  end

  def show(ans)
    puts ans ? "Yes" : "No"
  end
end

Problem.new.instance_eval do
  show(solve)
end
