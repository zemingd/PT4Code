#! /usr/bin/env ruby

input = STDIN.read
d = input.chomp

for i in 0..(d.length - 1) do
  if d[i] == "1" then
    d[i] = "9"
  else
    d[i] = "1"
  end
end

puts d
