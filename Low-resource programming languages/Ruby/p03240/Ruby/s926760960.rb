class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)

  def initialize
    @n = gets.to_s.to_i
    @a = Array.new(n) do
      x,y,h = gets.to_s.split.map{ |v| v.to_i }
      [h,y,x]
    end
    @a.sort!.reverse!
  end

  def solve
    0.upto(100) do |i|
      0.upto(100) do |j|
        return query(i,j) if valid?(i,j)
      end
    end
  end

  def valid?(i,j)
    hh = height(i,j,0)
    1.upto(n-1).all? do |k|
      h,y,x = a[k]
      h == [hh - manhattan(i,j,y,x), 0].max
    end
  end
  
  def manhattan(y1,x1,y2,x2)
    (y1-y2).abs + (x1-x2).abs
  end
  
  def query(i,j)
    h = height(i,j,0)
    [j,i,h]
  end

  def height(i,j,k)
    h,y,x = a[k]
    manhattan(i,j,y,x) + h
  end
  
  def show(ans)
    puts ans.join(" ")
  end
end

Problem.new.instance_eval do
  show(solve)
end
