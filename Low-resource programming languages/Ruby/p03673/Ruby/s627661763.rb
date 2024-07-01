#!/usr/bin/env ruby

def solve
  n = gets
  ary = gets.split(' ').map &:to_i
  odd = []
  even = []

  ary.each_with_index do |e, i|
    if (i+1).even?
      even << e
    else
      odd << e
    end
  end

  if ary.length.even?
    puts (even.reverse + odd).join(' ')
  else
    puts (odd.reverse + even).join(' ')
  end
end

if $0 == __FILE__
  solve
end
