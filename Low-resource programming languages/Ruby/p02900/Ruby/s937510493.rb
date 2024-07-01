# coding: utf-8
class Case04

  def initialize
  end

  def show
    p self.instance_variables
        .map{ |sym| [sym, self.instance_variable_get(sym)] }
        .to_h
  end

  def gcd(x,y)
    if x < y then
      x, y = y, x
    end
    r = x % y
    while r != 0 do
      x = y
      y = r
      r = x % y
    end
    y 
  end

  def prime_dev(x)
    @d = []
    2.upto(Math.sqrt(x).to_i + 1) do |p|
      q = 0
      while x % p == 0 do
        q += 1
        x = x / p
      end
      @d << q if q > 0
    end
    # @d.reduce(1) { |r,x| r * (x + 1) } -1
    @d.length + 1
  end
  
  # 実行する
  def execute
    read
    solve
    output
  end

  # 読込
  def read
    @a, @b  = gets.chomp.split.map(&:to_i)
  end

  # 回答
  def solve
    @g = gcd(@a, @b)
    @result = prime_dev(@g)
  end
  
  # 出力
  def output
    puts @result
  end

end

Case04.new.execute if $0 == __FILE__

