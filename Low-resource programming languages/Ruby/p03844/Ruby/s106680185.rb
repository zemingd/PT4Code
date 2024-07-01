class Problem
  attr_accessor :a, :b, :n, :m, :h, :w

  def initialize
    @a,@op,@b = gets.to_s.split
  end

  def solve
    if @op == "+"
      @a.to_i + @b.to_i
    else
      @a.to_i - @b.to_i
    end
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end
