#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
def aux(txt)
  re=Regexp.new(/[A-Za-z]/)
  h=Hash.new(0)
  txt.split(//).each {|c|
    if re.match(c)
      h[c.downcase] += 1
    end
  }
  h
end

def main
  dat=[]
  fh=STDIN
  #fh=File.new("x.txt", "r")
  txt = fh.read
  hist=aux(txt)

  ('a'..'z').to_a.each{|k|
    puts "#{k} : #{hist[k]}"
  }
end

if $0 == __FILE__ then
  main
end
