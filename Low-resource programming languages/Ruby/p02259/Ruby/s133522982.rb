#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class Main
  def initialize()
    #    fh = open("ALDS1_1_D_in.txt")
    fh = STDIN
    n = fh.gets.chomp.to_i
    count=0
    fl = fh.gets.chomp.split.map{|x| x.to_i}
    abort if fl.length != n

    ans = bubble(fl)
    n = ans.shift
    puts ans.map{|x|x.to_s}.join(" ")
    puts n
  end

  def bubble(a)
    n = 0
    0.upto(a.length-1).each{|i|
      (a.length-1).downto(i+1).each{|j|
        if a[j] < a[j-1] then
          tmp = a[j]
          a[j] = a[j-1]
          a[j-1] = tmp
          n += 1
        end
      }
    }
    a.unshift(n)
  end
end

if $0==__FILE__ then
  Main.new()
end