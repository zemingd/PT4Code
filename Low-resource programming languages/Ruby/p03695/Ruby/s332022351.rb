class Problem
  attr_accessor :a, :b, :n, :m, :h, :w

  def initialize
    @n = gets.to_s.to_i
    @a = gets.to_s.split.map{ |v| v.to_i }
  end

  def solve
    cnt = a.map{_1 / 400}.tally
    mini = 0
    gold = 0
    cnt.each do |k,v|
      if k >= 8 
        gold += v
      else
        mini += 1
      end
    end
    if mini == 0
      [1, gold]
    else
      [mini, mini + gold]
    end
  end
  
  def rates(a)
  end

  def show(ans)
    puts ans.join(" ")
  end
end

Problem.new.instance_eval do
  show(solve)
end
