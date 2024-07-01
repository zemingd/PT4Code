#!/usr/bin/ruby
# -*- coding: utf-8 -*-
=begin
=end

class Dl
  def initialize()
    @lst = []
  end

  def lst
    @lst
  end

  def exe(cmd, val)
    if cmd=="insert" then
      @lst.unshift(val)
    elsif cmd=="delete" then
      0.upto(@lst.length-1).each{|i|
        if @lst[i]==val then
          @lst.delete_at(i)
          break
        end }
    elsif cmd=="deleteFirst" then
        @lst.shift
    elsif cmd=="deleteLast" then
        @lst.pop
    end

  end

end

class Main
  def initialize()
    #fh = open("x.txt")
    fh = STDIN
    cmd=[]
    val=[]
    n = fh.gets.chomp.to_i
    0.upto(n-1){|i| cmd[i],val[i] = fh.gets.chomp.split}

    dl = Dl.new()
    0.upto(cmd.length-1).each{|i|
      dl.exe(cmd[i], val[i]) }

    puts dl.lst().join(" ")
  end
end

if $0==__FILE__ then
  Main.new()
end