class Problem
  attr_accessor :a, :b, :n, :m, :h, :w, :x, :y, :s ,:t, :k, :l

  def initialize
    @n,@l = gets.to_s.split.map{ |v| v.to_i }
  end

  def solve
    if 0 < l
      solve_plus
    elsif l + n - 1 < 0
      solve_minus
    else
      solve_0
    end
  end

  def solve_0
    ans = 0
    l.upto(l+n-1) do |i|
      ans += i
    end
    ans
  end

  def solve_plus
    ans = 0
    (l+1).upto(l+n-1) do |i|
      ans += i
    end
    ans
  end

  def solve_minus
    ans = 0
    l.upto(l+n-2) do |i|
      ans += i
    end
    ans
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end
