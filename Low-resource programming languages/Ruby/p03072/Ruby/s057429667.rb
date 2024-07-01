class Problem
  attr_accessor :a, :b, :n, :m, :h, :w

  def initialize
    @n = gets.to_s.to_i
    @a = gets.to_s.split.map{ |v| v.to_i }
  end

  def solve
    maxi = a[0]
    ans = 1
    1.upto(n-1) do |i|
      if maxi <= a[i]
        ans += 1
        maxi = a[i]
      end
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
