#!/usr/bin/env ruby
n, y = STDIN.readline().split(' ').map(&:to_i)
MONEY = [10_000, 5_000, 1_000]
def sum(array)
  array.inject(0){|sum, i| sum += i}
end
def make_combination(n, kinds)
  if kinds == 1
    [[n]]
  else
    (0..n).reverse.map{|i| make_combination(n-i, kinds-1).map{|a| [i] + a }}.flatten(1)
  end
end
def calc(c)
  sum(MONEY.zip(c).map{|m, n| m * n})
end
check = make_combination(n, 3).find{|c| calc(c) == y}
r = check || [-1, -1, -1]
puts "#{r.join(' ')}"
