#coding: euc-jp
class Main
  def self.main
    x, y, z, k = read
    a = Array.new(3).map{read.sort.reverse}
    stack = []
    flag = false
    [x, y].max.times do |i0|
      (i0 < x ? [y, i0].min : 0).times do |i1|
        s = a[0][i0] + a[1][i1]
        d = stack.distribution(s)
        break if flag && s < stack[k - 1]
        stack.insert(d, s)
      end
      (i0 < y ? [x, i0 + 1].min : 0).times do |i1|
        s = a[0][i1] + a[1][i0]
        d = stack.distribution(s)
        break if flag && s < stack[k - 1]
        stack.insert(d, s)
      end
      flag = true if ! flag && stack.length >= k
      stack = stack[0..(k - 1)] if flag
    end

    a[0] = stack
    a[1] = a[2]
    x = a[0].length
    y = a[1].length
    stack = []
    flag = false
    [x, y].max.times do |i0|
      (i0 < x ? [y, i0].min : 0).times do |i1|
        s = a[0][i0] + a[1][i1]
        d = stack.distribution(s)
        break if flag && s < stack[k - 1]
        stack.insert(d, s)
      end
      (i0 < y ? [x, i0 + 1].min : 0).times do |i1|
        s = a[0][i1] + a[1][i0]
        d = stack.distribution(s)
        break if flag && s < stack[k - 1]
        stack.insert(d, s)
      end
      flag = true if ! flag && stack.length >= k
      stack = stack[0..(k - 1)] if flag
    end

    k.times {|i| puts stack[i]}
  end

  def self.read
    gets.chomp.split.map(&:to_i)
  end
end

module Sort
  def distribution(v) #index2 pow2
    return 0 if (l = self.length) == 0
    pos = 0
    ind = l.index2
    (ind + 1).times do |i|
      if pos + (ind - i).pow2 <= l && self[pos + (ind - i).pow2 - 1] > v then
        pos += (ind - i).pow2
      end
    end
    return pos
  end
end

module Calc
  def index2
    if self < 1 then ; return nil ; end
    num = self >> 1
    r = 0
    while num > 0
      num = num >> 1
      r += 1
    end
    return r
  end

  def pow2
    return self < 0 ? 0 : 1 << self
  end
end

class Array
  include Sort
end

class Integer
  include Calc
end

Main.main
