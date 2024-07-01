require "set"

class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)

  def initialize
    @s = gets.chomp
    @t = gets.chomp
    @n = @s.size
    @st = Hash.new { |h, k| h[k] = Set.new }
    @ts = Hash.new { |h, k| h[k] = Set.new }
  end

  def solve
    rec
    valid?(@st) && valid?(@ts)
  end

  def rec
    n.times do |i|
      @st[s[i]] << t[i]
      @ts[t[i]] << s[i]
    end
  end

  def valid?(h)
    h.values.map(&:size).all?{ _1 == 1 }
  end

  def show(ans)
    puts ans ? "Yes" : "No"
  end
end

Problem.new.instance_eval do
  show(solve)
end
