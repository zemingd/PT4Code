#!/usr/bin/env ruby

x, y = STDIN.gets.split(' ')

collection = STDIN.gets&.split(' ')&.map!(&:to_i)

if collection == nil
  print x
  exit
end


search = [*0..100] - collection

diff = []

search.each_with_index do |e, i|
  diff << (e.to_i - x.to_i).abs
end

print search[diff.index(diff.min)]