#! /usr/bin/env ruby

input = STDIN.read.split("\n").map{|l| l.split("")}

puts (input[0][0] == input[1][2] && input[0][1] == input[1][1] && input[0][2] == input[1][0]) ? "YES" : "NO"
