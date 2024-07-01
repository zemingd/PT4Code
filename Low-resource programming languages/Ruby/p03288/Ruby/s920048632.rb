#!/usr/bin/env ruby

r = gets.chomp.to_i
result = ""
if (r < 1200)
  result = "ABC"
elsif (r < 2800)
  result = "ARC"
else
  result = "AGC"
end
