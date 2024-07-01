class Problem
  attr_accessor :a, :b, :n, :m, :h, :w, :dp

  def initialize
    @n = gets.to_s.to_i
    @a = Array.new(n+1, 0)
  end

  def solve
    rec
    @a
  end

  def rec
    max = (Math.sqrt(n) * 1.3).to_i
    1.upto(max) do |x|
      1.upto(max) do |y|
        1.upto(max) do |z|
          m = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
          next if n < m
          @a[m] += 1
        end
      end
    end
  end

  def show(ans)
    1.upto(n) do |i|
      puts ans[i]
    end
  end
end

Problem.new.instance_eval do
  show(solve)
end
