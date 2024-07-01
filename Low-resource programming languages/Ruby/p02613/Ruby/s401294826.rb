class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @n = gets.to_s.to_i
  end

  def solve
    ans = Hash.new(0)
    n.times do
      s = gets.chomp
      ans[s] += 1
    end
    ans
  end

  def show(ans)
    %w[AC WA TLE RE].each do |key|
      printf("%s x %d\n", key, ans[key])
    end
  end
end

Problem.new.instance_eval do
  show(solve)
end