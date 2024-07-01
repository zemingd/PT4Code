class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  attr_accessor :ch
  def initialize
    @n,@c = gets.split.map(&:to_i)
    @s,@t,@ch = Array.new(n){ gets.split.map(&:to_i) }.transpose
    @ch.map!{ _1 - 1 }
  end

  def solve
    dp = Array.new(200_001){ Array.new(30, 0) }
    n.times do |i|
      dp[s[i]][ch[i]] += 1
      dp[t[i]][ch[i]] -= 1
    end

    200_000.times do |i|
      30.times do |j|
        if 0 < dp[i+1][j]
          dp[i][j] = dp[i+1][j]
          dp[i+1][j] = 0
        end
      end
    end
    
    a = Array.new(200_001,0)
    200_000.times do |i|
      30.times do |j|
        a[i] += dp[i][j]
      end
    end
    cs = a.each_with_object([0]) { |v, h| h << h[-1] + v }
    cs.max
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end