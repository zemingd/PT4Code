class Problem
  attr_accessor :a, :b, :c, :n, :m, :h, :w, :x, :y, :ans
  def initialize
    @n = gets.to_s.to_i
    @ans = Hash.new(0)
  end

  def solve
    n.times do
      s = gets.chomp
      ans[s] += 1
    end
    %w(AC WA TLE RE).each do |key|
      printf("%s x %d\n", key, ans[key])
    end
  end
end

pb = Problem.new
pb.solve