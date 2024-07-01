class Matrix < Array
  attr_reader :x, :y
  def initialize(str = 0,x = 0,y = 0)
    super()
    @x = 0
    @y = 0
    if Array === str
      if Array === str[0]
        self.pushy str
      elsif x == 0
        self.pushy str
      else
        self.slice(str,x,y)
      end
    elsif Integer === str and str > 0
      self.pushy (self.e str)
    end
  end
  def to_s
    self
    #return self.map{|i|(Matrix === i ? i.join(" "): i)}
  end
  def inspect
    self.to_s
  end
  def pushy(index)
    if Array === index[0]
      if @x == 0 or @x == index[0].length
        for y in 0...index.length
          self << index[y]
        end
        @x = index[0].length
        @y += index.length
      end
    else
      if @x == 0 or @x == index.length
        self << index
        @x = index.length
        @y += 1
      end
    end
  end
  def pushx(index)
    for y in 0...@y
      self[y] << index[y]
    end
    @x += 1
  end
  def **(other)
    self.exp other
  end
  def *(other)
    self.mul other
  end
  def +(other)
    if Matrix === other and other.x == self.x and other.y == self.y
      for i in 0...y
        for j in 0...x
          self[i][j] = self[i][j] + other[i][j]
        end
      end
    end
  end
  def -(other)
    self + other * - 1
  end
  def +@
    self
  end
  def -@
    self * -1
  end
  def ~@
    temp = Array.new
    for i in 0...@x
      for j in 0...@y
        temp << (self.cofactor(i,j)).det * (- 1) ** (i + j)
      end
    end
    return Matrix.new(temp,@x,@y)
  end
  def exp(n,mod = 10 ** 15)
    if Integer === n
      if n == 0
        return self.e
      elsif n >= 1 and @x == @y
        n = n.to_s(2)
        re = self.copy
        e = [self.e,self.copy]
        for i in 1...n.length
          re = re.mul(re.mul(e[n[i].to_i],mod),mod)
        end
        return re
      else
        n = (-n).to_s(2)
        re = self.inverse
        e = [re.e,re.copy]
        for i in 1...n.length
          re = re.mul(re.mul(e[n[i].to_i],mod),mod)
        end
        return re
      end
    end
  end
  def e(n = @x)
    if n != 0 and Integer === n
      re = Matrix.new
      for i in 0...n
        re.pushy Array.new(n,0)
        re[i][i] = 1
      end
      return re
    end
  end
  def inverse
    if self.det != 0
      return ~self * Rational(1,self.det)
    end
  end
  def slice(index,x,y)
    re = Matrix.new
    #p index
    for i in 0...y
      self.pushy index[i * x...(i + 1) * x]
    end
    return re
  end
  def det
    if @x == 1 and @y == 1
      return self[0][0]
    elsif @x == @y
      re = 0
      for i in 0...@x
        re += self[i][0] * (self.cofactor(0,i)).det * (- 1) ** i
      end
      return re
    else
      return 0
    end
  end
  def cofactor(x,y)
    re = self.copy
    re.popx(x)
    re.popy(y)
    return re
  end
  def copy
    re = Matrix.new
    for y in 0...@y
      temp = self.cc y
      re.pushy temp
    end
    return re
  end
  def cc(y)
    re = []
    for i in 0...@x
      re << self[y][i]
    end
    return re
  end
  def popx(n)
    for i in 0...@y
      self[i].delete_at(n)
    end
    @x -= 1
  end
  def popy(n)
    self.delete_at(n)
    @y -= 1
  end
  def mul(index,mod = 10 ** 15)
    if Numeric === index
      re = self.copy
      for i in 0...@y
        for j in 0...@x
          re[i][j] *= index
        end
      end
      return re
    elsif Matrix === index
      if @x == index.gety
        re = Matrix.new
        for i in 0...@y
          tempa = []
          for x in 0...index.getx
            tempn = 0
            for y in 0...index.gety
              tempn += self[i][y] * index[y][x]
            end
            tempa << tempn % mod
          end
          re.pushy tempa
        end
        return re.rast
      end
    end
  end
  def rast
    if @x == 1 and @y == 1
      return self[0][0]
    else
      self
    end
  end
  def gcd(a,b)
    if a % b == 0
      b
    else
      gcd(b,a % b)
    end
  end
  def lcm(a,b)
    a * b / gcd(a,b)
  end
  def inv
    if @x == @y and self.det != 0
      re = Matrix.new
      for i in 0...@x
        index = []
        for j in 0...@x
          temp = []
          for k in 0...@x
            temp << self[k][j]
          end
          (i == j)? temp << 1:temp << 0
          index << temp
        end
        re.pushy gauss(index)
      end
      return re
    end
  end
  def gauss(list)
    p list
    re = []
    for i in 0...list.length - 1
      for j in 0...list.length
        if list[j][i] != 0
          c = 0
          while list[j][c] == 0
            c += 1
          end
          if c == i
            for k in 1...list.length
              if list[(j + k) % list.length][i] != 0
                lcm = lcm(list[j][i],list[(j + k) % list.length][i])
                lcmk = lcm / list[(j + k) % list.length][i]
                for l in i...list[j].length
                  list[(j + k) % list.length][l] = lcmk * list[(j + k) % list.length][l] - lcm * list[j][l] / list[j][i]
                end
              end
            end
          end
        end
      end
    end
    for m in 3..list.length + 1
      n = 0
      boolean = true
      while boolean
        x = 0
        while list[n][x] == 0
          x += 1
        end
        if x == list.length - m + 2
          boolean = false
        else
          n += 1
        end
      end
      re.unshift(Rational(list[n][-1],list[n][1 - m]))
      for o in 1...list.length
        if list[(n + o) % list.length][1 - m] != 0
          list[(n + o) % list.length][-1] -= list[(n + o) % list.length][1 - m] * re[0]
          list[(n + o) % list.length][1 - m] = 0
        end
      end
    end
    n = 0
    while list[n][0] == 0
      n += 1
    end
    re.unshift(Rational(list[n][-1],list[n][0]))
    return re
  end
  def getx
    return @x
  end
  def gety
    return @y
  end
end
def f
  n, m, l = gets.split(" ").map(&:to_i)
  l = l
  a = Matrix.new
  n.times do
    a.pushy(gets.split(" ").map(&:to_i))
  end
  b = Matrix.new
  m.times do
    b.pushy(gets.split(" ").map(&:to_i))
  end
  puts (a * b).map{|i|i.join(" ")}
end
f