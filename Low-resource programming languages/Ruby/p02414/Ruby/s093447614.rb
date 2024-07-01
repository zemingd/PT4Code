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
      super(*arr)
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
    return Matrix.new(super, @n, @m)
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
n, m, l = gets.split(" ").map(&:to_i)
a = []
n.times do
  a << [*gets.split(" ").map(&:to_i)]
end
a = Matrix.new(a, n, m)
b = []
m.times do
  b << [*gets.split(" ").map(&:to_i)]
end
b = Matrix.new(b, m, l)
puts (a * b).to_s