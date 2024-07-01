#! /usr/bin/env ruby

input = STDIN.read.chomp.split(" ").map{|i| i.to_i}
X = input[0]
Y = input[1]

puts X + Y / 2