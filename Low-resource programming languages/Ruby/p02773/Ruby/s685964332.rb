#!/usr/bin/ruby

require 'pp'

N = gets.chomp.to_i


map = {}

1.upto(N){|i|
  s = gets.chomp
  if map[s] == nil
    map[s] = 1
  else
    map[s]+=1
  end
}


result = map.sort_by{|k,v| [-v, k]}

c = result[0][1]
result.each{|e|
  if c == e[1]
    puts e[0]
  else
    break
  end
}

