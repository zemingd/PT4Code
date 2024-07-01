#!/usr/bin/env ruby

str = STDIN.read.downcase

('a'..'z').each do |i|
  puts "#{i} : #{str.count(i)}"
end