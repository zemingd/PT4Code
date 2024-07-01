require "numo/narray"

class Problem
  attr_accessor :a, :b, :n, :x, :m, :h, :w, :dp

  def initialize
    @n = gets.to_s.to_i
    @x = gets.to_s.to_i(2)
    @dp = Numo::Int64.new(1<<n).fill(-1)
    @dp[0] = 0
  end

  def solve
    ans = []
    1.upto(n) do |i|
      y = x ^ (1<<(n-i))
      ans << rec(y)
    end
    ans
  end

  def rec(i)
    return dp[i] if dp[i] != -1
    dp[i] = 1 + rec(i % popcount(i))
  end

  def popcount(n)
    n.to_s(2).count("1")
  end

  def show(ans)
    puts ans.join("\n")
  end
end

Problem.new.instance_eval do
  show(solve)
end
