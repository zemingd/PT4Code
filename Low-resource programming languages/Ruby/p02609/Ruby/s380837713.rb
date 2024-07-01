require "numo/narray"

class Problem
  attr_accessor :t, :a, :b, :n, :x, :m, :h, :w, :dp

  def initialize
    @n = gets.to_s.to_i
    @x = gets.to_s
    @dp = Numo::Int64.new(200002).fill(-1)
    @dp[0] = 0
  end

  def solve
    m = x.count("1")
    ans = []
    (n-1).downto(0) do |i|
      if x[n - 1 - i] == "1"
        y = (basedown + maskdown[i]) % (m-1)
        ans << rec(y) + 1
      else
        y = (baseup + maskup[i]) % (m+1)
        ans << rec(y) + 1
      end
    end
    ans
  end

  def baseup
    m = x.count("1") + 1
    ans = 0
    n.times do |i|
      ans += maskup[n-1-i] if x[i] == "1"
      ans %= m
    end
    ans
  end
  
  def basedown
    m = x.count("1") - 1
    ans = 0
    n.times do |i|
      ans += maskdown[n-1-i] if x[i] == "1"
      ans %= m
    end
    ans
  end
  
  def maskup
    m = x.count("1") + 1
    @maskup ||= Array.new(n) do |i|
      2.pow(i,m)
    end
  end

  def maskdown
    m = x.count("1") - 1
    @maskdown ||= Array.new(n) do |i|
      2.pow(i,m)
    end
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
