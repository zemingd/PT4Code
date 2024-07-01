#!/usr/bin/env ruby
require 'set'

def main
    n,y = gets.chomp.split(" ").map(&:to_i)
    # a = y/10000
    # b = (y - 10000*a)/5000
    # c = (y - 10000*a - 5000*b)/1000

    (0..y/10000).reverse_each do |a|
        (0..((y - 10000*a)/5000)).reverse_each do |b|
            c = (y - 10000*a - 5000*b)/1000
            if a+b+c==n
                puts "#{a} #{b} #{c}"
                return
            end
        end
    end
    puts "-1 -1 -1"
end

main