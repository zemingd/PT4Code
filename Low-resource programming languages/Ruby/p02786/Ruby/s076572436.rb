class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @h = gets.to_i
  end

  def solve
    ans = 0
    cnt = 0
    while h > 0
      ans += 2 ** cnt
      @h /= 2
      cnt += 1
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