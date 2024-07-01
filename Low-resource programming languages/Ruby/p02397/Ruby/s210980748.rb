#!/usr/bin/env ruby
while s = gets.split(' ')
    if s == ["0", "0"]
        break
    end

    a = []
    for i in 0..s.length-1
        a[i] = s[i].to_i
    end

    if a[0] > a[1]
        puts "#{a[1]} #{a[0]}"
    else
        puts "#{a[0]} #{a[1]}"
    end
end

