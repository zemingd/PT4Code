class Problem
  attr_accessor :a, :b, :c, :k, :n, :m, :h, :w, :s, :x, :y
  def initialize
    @w,@h,@x,@y = gets.to_s.split.map{ |v| v.to_i }
  end

  def solve
    (h * w).to_f / 2.0
  end

  def num
    x * 2 == w && y * 2 == h ? 1 : 0
  end

  def show(ans)
    printf("%f %d\n", solve, num)
  end
end

Problem.new.instance_eval do
  show(solve)
end