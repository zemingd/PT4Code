#!/usr/bin/ruby

h = ARGF.gets.to_i
i = 0

while h > 0
  h = h >> 1
  i = i * 2 + 1
end

puts i
