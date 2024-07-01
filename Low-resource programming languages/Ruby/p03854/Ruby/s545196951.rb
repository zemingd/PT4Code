#!/usr/bin/env ruby
require 'set'

def main
    s = gets.chomp
    while s.to_s.size > 0 do
        if s[0,7] == "dreamer"
            if s[5,5] == "erase"
                s = s[5..-1]
            else
                s = s[7..-1]
            end
        elsif s[0,6] == "eraser"
            s = s[6..-1]
        elsif s[0,5] == "dream"
            s = s[5..-1]
        elsif s[0,5] == "erase"
            s = s[5..-1]
        else
            puts "NO"
            return
        end
    end
    puts "YES"
end

main