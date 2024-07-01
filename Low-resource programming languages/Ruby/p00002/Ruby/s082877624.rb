#!/usr/bin/ruby
# -*- coding: utf-8 -*-
=begin
Volume0-0001
=end
class Main
  def log10(x)
    Math.log(x) / Math.log(10)
  end

  def keta(x)
    if x==0 then
      return(1)
    else
      return(log10(x).to_i + 1)
    end
  end

  def initialize
    fh=STDIN
    while fh.gets do
      a,b = $_.split.map{|x| x.to_i}
      puts keta(a+b)
    end
  end

end


if $0 == __FILE__ then
  Main.new
end