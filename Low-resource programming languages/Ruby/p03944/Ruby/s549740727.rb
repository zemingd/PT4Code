class Problem
  attr_accessor :a, :b, :n, :m, :h, :w, :x, :y, :s ,:t

  def initialize
    @w,@h,@n = gets.to_s.split.map{ |v| v.to_i }
    @x,@y,@a = Array.new(n){ gets.to_s.split.map{ |v| v.to_i } }.transpose
  end

  def solve
    return 0 if minx >= maxx
    return 0 if miny >= maxy
    (maxy - miny) * (maxx - minx)
  end

  def minx
    n.times.select{|i|a[i] == 1}.map{|i| x[i]}.max || 0
  end

  def maxx
    n.times.select{|i|a[i] == 2}.map{|i| x[i]}.min || w
  end

  def miny
    n.times.select{|i|a[i] == 3}.map{|i| y[i]}.max || 0
  end

  def maxy
    n.times.select{|i|a[i] == 4}.map{|i| y[i]}.min || h
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end
