class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  attr_accessor :seen

  def initialize
    @n, @m = gets.to_s.split.map { |v| v.to_i }
    @h = gets.to_s.split.map { |v| v.to_i }
    @g = Array.new(n) { [] }
    m.times do
      a, b = gets.to_s.split.map { |v| v.to_i }
      a -= 1
      b -= 1
      g[a] << h[b]
      g[b] << h[a]
    end
    @seen = Array.new(n, false)
  end

  def solve
    ans = 0
    n.times do |v|
      ans += 1 if g[v].empty? || g[v].max < h[v]
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
