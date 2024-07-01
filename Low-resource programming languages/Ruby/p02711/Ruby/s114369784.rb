class Problem
  attr_accessor :a, :b, :n, :m, :h, :w

  def initialize
    @a = gets.chomp
  end

  def solve
    a.include?("7")
  end

  def show(ans)
    puts ans ? "Yes" : "No"
  end
end

Problem.new.instance_eval do
  show(solve)
end
