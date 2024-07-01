#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
    
if __FILE__ == $0
  while line = STDIN.gets
    tokens = line.chomp!.split.map!(&:to_i)
    a, b, c = tokens[0], tokens[1], tokens[2]
  
    while a > b || b > c do
      if a > b
        a, b = b, a
      end
      if b > c
        b, c = c, b
      end
    end
    puts "#{a} #{b} #{c}"
  end
end