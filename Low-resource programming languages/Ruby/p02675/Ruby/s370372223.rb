#!/usr/bin/env ruby
# require 'pry'

input = gets.chomp[-1].to_i

hon = [2,4,5,7,9]
pon = [0,1,6,8]
bon = [3]

if bon.include?(input)
  puts 'bon'
elsif pon.include?(input)
  puts 'pon'
else
  puts 'hon'
end
