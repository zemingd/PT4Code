#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
     
if __FILE__ == $0
  case = 1
  while line = STDIN.gets
    tokens = line.chomp!.split.map!(&:to_i)
    x = tokens[0].to_i
    break if x == 0
    puts "Case #{case}: #{x}"
    case += 1
  end
end