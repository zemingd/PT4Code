class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @n = gets.to_s.to_i
    @a = gets.split.map(&:to_i)
  end

  def setwise?
    a.inject(&:gcd) == 1
  end

  def pairwise?
    0.upto(n-2).all? do |i|
      (i+1).upto(n-1).all? do |j|
        a[i].gcd(a[j]) == 1
      end
    end
  end

  def solve
    return "not coprime" if !setwise?
    return "pairwise coprime" if pairwise?
    "setwise coprime"
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end