#! /usr/bin/ruby -w
# encoding: utf-8
#
# ??????????????????
#

def puts_array(a)
  sep = ''
  a.each do |e|
    print sep + e.to_s
    sep = ' '
  end
  puts
end

def bubble_sort(a, n)
  count = 0
  0.upto(n - 1) do |i|
    (n - 1).downto(i + 1) do |j|
      e1 = a[j]
      e2 = a[j - 1]
      if e1 < e2
        a[j] = e2
        a[j - 1] = e1
        count += 1
      end
    end
  end
  count
end
if $0 == __FILE__
  n = gets.to_i
  a = gets.chomp.split.map(&:to_i)
  n = bubble_sort(a, n)
  puts_array(a)
  puts n
end