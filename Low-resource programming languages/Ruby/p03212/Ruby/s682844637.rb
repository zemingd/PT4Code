class Integer
  @mod = nil
  def self.set_mod(mod = 10**9 + 7)
    @mod = mod
  end

  def combination(k = self) # 4C2 = 6
    return 1 if k.zero?
    if @mod.nil?
      (self - k + 1..self).inject(:*) / k.factorial
    else
      (self - k + 1..self).inject{|i,m|i * m % @mod} * k.factorial.modinv % @mod
    end
  end

  def permutation(k = self) # 4P2 = 12
    return 1 if k.zero?
    if @mod.nil?
      (self - k + 1..self).inject(:*)
    else
      (self - k + 1..self).inject{|i,m|i * m % @mod}
    end
  end

  def factorial(step = 1) # 4! = 24
    return 1 if self.zero?
    if @mod.nil?
      (1..self).inject(:*)
    else
      (1..self).inject{|i,m|i * m % @mod}
    end
  end

  def modinv # https://qiita.com/drken/items/3b4fdf0a78e7a138cd9a
    a = self; b = @mod; u = 1; v = 0
    while b > 0
      t = a / b
      a -= t * b
      a, b = b, a
      u -= t * v
      u, v = v, u
    end
    u %= m
    u += m if u < 0
    u
  end

  # 繰り返し二乗法
  def repeat_squaring(p, mod = (10**9 + 7))
    return 1 if p == 0
    if p % 2 == 0
      t = repeat_squaring(p/2, mod)
      return t*t % mod
    end
    self * repeat_squaring(p - 1, mod) % mod
  end

  alias :C :combination
  alias :P :permutation
  alias :! :factorial
end
require 'pp'
# 4 13 26484
n = gets.to_i
cnt = 0

sum = 0
M = 10
rs = []
cnts = (1..M).map do |m|
  [3,5,7].repeated_permutation(m) do |arr|
    cnt3 = arr.count(3)
    cnt5 = arr.count(5)
    cnt7 = arr.count(7)
    next if cnt3 == 0 || cnt5 == 0 || cnt7 == 0
    r =  arr.size.! / (cnt3.! * cnt5.! * cnt7.!)
    rs << arr.join.to_i
  end
end
# pp rs

# p n
p rs.bsearch_index{|x|x > n}

