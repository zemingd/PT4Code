#!/usr/bin/ruby

input = STDIN.gets.split(" ")

a = input[0]
b = input[1]

str_ab = input[0].to_s + input[1].to_s

ab = str_ab.to_i

if ab**0.5 == (ab**0.5).to_i then
  puts 'Yes'
else
  puts 'No'
end
