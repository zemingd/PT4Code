#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
   
if __FILE__ == $0
  while line = STDIN.gets
    tokens = line.chomp!.split.map!(&:to_i)
    a, b, c = tokens[0], tokens[1], tokens[2]
 
    while a > b || b > c do
      if a > b
        tmp = 0
        a = tmp
        a = b
        b = tmp
      end
      if b > c
        tmp = 0
        b = tmp
        b = c
        c = tmp
      end
    end
    puts "#{a} #{b} #{c}"
  end
end