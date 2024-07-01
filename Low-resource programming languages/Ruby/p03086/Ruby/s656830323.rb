#!/usr/bin/env ruby
# require 'pry'

s = gets.chomp.split("")
ACGT=['A', 'C', 'G', 'T']
count=0
ary=[]
s.map.with_index do |ele,i|
  if ACGT.include?(ele)
    count += 1
    if i == s.length - 1
      ary << count
    end
  else
    ary << count
    count = 0
  end
end
puts ary.max
