#!/usr/bin/env ruby

index = gets.to_i
array = gets.split.map(&:to_i)
0.upto(index - 1) do |count|
    print array.reverse[count]
    if count != index-1 then
        print " "
    else
        puts ""
    end
end

