#!/bin/ruby

n, m = gets.chomp.split(" ").map(&:to_i)

data = {}
n.times do |i|
  k, *foods = gets.chomp.split(" ").map(&:to_i)
  k.times do |j|
    data[foods[j]] ||= 0
    data[foods[j]] += 1
  end
end
puts data.select {|k,v| v == n }.length
