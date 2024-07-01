#!/usr/bin/env ruby
h , w = STDIN.readline().split(' ').map(&:to_i)
ss = []
ss << ('#' * (w + 2)).split('')
h.times.each {|i| ss << ('#' + STDIN.readline().strip + '#').split('') }
ss << ('#' * (w + 2)).split('')
def sum(a)
  a.inject(0){|sum, i| sum += i }
end
def check_paint(ss, h, w)
  for y in (1..h) do
    for x in (1..w) do
      next if ss[y][x] == '.'
      return false if not paintable?(x, y, ss)
    end
  end
  true
end
def print_bomb_nums(ns)
  ns.each{|n| puts "#{n.join}"}
end
def p?(x, y, ss)
  ss[y][x] == '#'
end
def paintable?(x, y, ss)
  [[x, y-1, ss],
   [x-1, y, ss], [x+1, y, ss],
   [x, y+1, ss]].any?{|x, y, ss|p?(x, y, ss)}
end
puts "#{check_paint(ss, h, w) ? 'Yes' : 'No'}"