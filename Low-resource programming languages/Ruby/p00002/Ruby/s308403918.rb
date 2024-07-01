#! /usr/bin/env ruby
# -*- coding: utf-8 -*-

class Main
  def solve
    # insert your code
    STDIN.each_line do |line|
      a, b = line.split.map &:to_i
      puts Math.log10(a+b).round + 1
    end
    return nil    
  end
end


if __FILE__ == $PROGRAM_NAME
  h = Main.new
  h.solve
end