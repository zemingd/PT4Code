#!/usr/bin/env ruby
S = gets.chomp.to_s
T = gets.chomp.to_s

puts T.start_with?(S) ? "Yes" : "No"