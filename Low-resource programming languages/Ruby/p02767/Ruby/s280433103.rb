#!/usr/bin/env ruby
# 156-c

n = gets().to_i
x = gets().chomp.split(" ").map(&:to_i)
a = 0
(x.min..(x.max+1)).each {|i|
    c = 0
    x.each {|j|
        c = c + (i-j)*(i-j)
    }
    if a == 0 then
        a = c
    elsif a > c then
        a = c
    end
}
puts a
