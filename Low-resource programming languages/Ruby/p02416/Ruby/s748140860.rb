#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
def aux(s)
  s.split(//).map(&:to_i).sum
end

def main
  fh=STDIN
  #fh=File.new("x.txt", "r")
  while fh.gets
    s = $_.chomp
    break if s=="0"
    puts aux(s)
  end

end

if $0 == __FILE__ then
  main
end
