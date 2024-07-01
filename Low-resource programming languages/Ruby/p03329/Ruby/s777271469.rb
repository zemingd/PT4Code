class Problem
  attr_accessor :a, :b, :n, :m, :h, :w, :dp

  def initialize
    @n = gets.to_s.to_i
    @dp = Array.new(n+1, -1)
    @dp[0] = 0
  end

  def solve
    rec(n)
  end

  def rec(n)
    return @dp[n] if @dp[n] != -1
    ans = 1 + rec(n-1)
    1.upto(7) do |j|
      d = 6 ** j
      1.upto(5) do |k|
        next if n < d * k
        cnt = k + rec(n - d * k)
        ans = cnt if cnt < ans
      end
    end
   
    1.upto(6) do |j|
      d = 9 ** j
      1.upto(8) do |k|
        next if n < d * k
        cnt = k + rec(n - d * k)
        ans = cnt if cnt < ans
      end
    end

    @dp[n] = ans
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end
