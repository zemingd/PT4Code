class Problem
  N = 10**5
  M = 30
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @n,@m = gets.to_s.split.map{ |v| v.to_i }
    @s,@t,@c = Array.new(n){ gets.to_s.split.map{ |v| v.to_i } }.transpose
    @c.map!{|v|v-1}
  end

  def solve
    dp = Array.new(M){ Array.new(N+1,0) }
    n.times do |i|
      dp[c[i]][s[i]] += 1
      dp[c[i]][t[i]] -= 1
    end

    a = Array.new(N+1,0)
    M.times do |i|
      N.times do |j|
        if 0 < dp[i][j+1]
          a[j] += dp[i][j+1]
        end

        if dp[i][j] < 0
          a[j] += dp[i][j]
        end
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