#!/usr/bin/env ruby

(n, m)  = STDIN.gets.chomp.split(/\s/).map { |e| e.to_i }

ans = n * (n - 1) / 2 + m * (m - 1) / 2

puts ans
