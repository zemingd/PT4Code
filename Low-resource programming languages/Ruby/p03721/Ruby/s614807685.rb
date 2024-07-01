class Problem
  attr_accessor :a, :b, :n, :m, :h, :w

  def initialize
    @n, @k = gets.to_s.split.map{ |v| v.to_i }
    @a = Array.new(n){ gets.to_s.split.map{ |v| v.to_i } }
  end

  def solve
    @a.sort.each do |a,b|
      @k -= b
      return a if @k <= 0
    end
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end
