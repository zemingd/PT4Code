class Matrix < Array
  attr_reader :n, :m
  def initialize(arr, row = false, cul = false)
    if (row and cul) or !(Array === arr[0])
      arr.flatten!
      super()
      for i in 0...row ||= arr.length
        self << [*arr[i * cul, cul]]
      end
      @n, @m = row, cul
    elsif Array === arr[0]
      super(arr)
      @n, @m = arr.length, arr[0].length
    else
      raise
    end
  end
  
  def self.e(row = 0)
    result = []
    for i in 0...row
      result << (0...row).map{|num|num == i ? 1: 0}
    end
    return Matrix.new(result)
  end
  
  def *(other)
    if Matrix === other
      return mmul(other)
    elsif Numeric === other
      return self.map{|item|item.map{|i|i * other}}
    end
  end
  
  def dup
    return Matrix.new(self.map(&:dup), @n, @m)
  end
  
  def **(num)
    if num == 0
      return 1
    else
      result = Matrix.e(@n)
      num.to_s(2).each_char{|c|result = result * result * self ** (c.to_i)}
      return result
    end
  end
  
  def to_s
    result = []
    for i in 0...@n
      result << self[i].join(" ")
    end
    return result
  end
  
  def to_ary
    self
  end
  
  private
  def mmul(other)
    result = []
    for i in 0... self.n
      for j in 0... other.m
        temp = 0
        for k in 0... self.m
          temp += self[i][k] * other[k][j]
        end
        result << temp
      end
    end
    return Matrix.new(result, self.n, other.m)
  end
end
class Dice
  attr_reader :att, :num
  def initialize(i, ii, iii, iv, v, vi, ichi = [0, 1, 0], ni = [0, 0, 1], san = [1, 0, 0], posx = 0, posy = 0)
    @att = Matrix.new([ichi, ni, san], 3, 3)
    @num = Array.new([nil, i, ii, iii, iv, v, vi])
    @x, @y = posx, posy
  end
  
  def to_s
    return "#{gety} #{getz} #{getx} #{getx(-1)} #{getz(-1)} #{gety(-1)}"
  end
  
  def ==(other)
    other = other.dup
    if (self.num && other.num) == other.num
      2.times do
        3.times do
          4.times do
            return true if match?(other)
            other.roty!
          end
          return true if match?(other)
          other.rotx!
        end
        other.rotx!(-1)
        other.rotz!
      end
    end
    return false
  end
  
  def match?(other)
    return ((self.getx == other.getx) and (self.getx(-1) == other.getx(-1)) and (self.gety == other.gety) and (self.gety(-1) == other.gety(-1)) and (self.getz == other.getz) and (self.getz(-1) == other.getz(-1)))
  end
  
  def dup
    return Dice.new(*@num[1..6].dup, *@att.dup, @x, @y)
  end
  
  def set(top, front)
    return self.dup.set!(top, front)
  end
  
  def set!(top, front)
    while top != gety or front != getz
     while top != gety and front != getz
       rotx!
     end
     while top == gety and front != getz
       roty!
     end
     while top != gety and front == getz
       rotz!
     end
    end
    return self
  end
  
  def getx(i = 1)
    return @num[i * (@att.index{|item|item[0] != 0} + 1) * @att.find{|item|item[0] != 0}[0]]
  end
  
  def gety(i = 1)
    return @num[i * (@att.index{|item|item[1] != 0} + 1) * @att.find{|item|item[1] != 0}[1]]
  end
  
  def getz(i = 1)
    return @num[i * (@att.index{|item|item[2] != 0} + 1) * @att.find{|item|item[2] != 0}[2]]
  end
  
  def rotx(i = 1)
    return self.dup.rotx!(i)
  end
  
  def roty(i = 1)
    return self.dup.roty!(i)
  end
  
  def rotz(i = 1)
    return self.dup.rotz!(i)
  end
  
  def rotx!(i = 1)
    @att *= Matrix.new([[1, 0, 0], [0, 0, -i], [0, i, 0]], 3, 3)
    return self
  end
  
  def roty!(i = 1)
    @att *= Matrix.new([[0, 0, i], [0, 1, 0], [-i, 0, 0]], 3, 3)
    return self
  end
  
  def rotz!(i = 1)
    @att *= Matrix.new([[0, -i, 0], [i, 0, 0], [0, 0, 1]], 3, 3)
    return self
  end
end
arr = []
gets.to_i.times do
  arr << Dice.new(*gets.split(" ").map(&:to_i))
end
if !arr.combination(2).any?{|(a, b)|a == b}
  puts "Yes"
else
  puts "No"
end