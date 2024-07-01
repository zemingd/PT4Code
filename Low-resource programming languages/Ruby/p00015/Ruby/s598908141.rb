#!/usr/bin/env ruby
# encoding: utf -8
M = 10**80-1
t = gets.to_i
while t != 0 do
    a = gets.to_i
    b = gets.to_i
    if a+b > M || a > M || b > M
        puts 'overflow'
    else
        puts a+b
    end
    t -= 1
end
