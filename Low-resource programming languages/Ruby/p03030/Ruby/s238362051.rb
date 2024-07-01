#!/usr/bin/env ruby
# frozen_string_literal: true
n = gets.to_i
arr = []
n.times do |i|
  s,p = gets.split
  arr << [i+1,s,p.to_i]
end
arr.sort_by!{|i,s,p| [s,-p]}
arr.each do |w|
  puts w[0]
end