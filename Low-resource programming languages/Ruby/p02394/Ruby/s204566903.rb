#!/usr/bin/env ruby

weight,high,p_x,p_y,radius = gets.split.map(&:to_i)

if 0 > p_x - radius or 0 > p_y-radius or weight < p_x + radius or high < p_y + radius
    puts "No"
else
    puts "Yes"
end
