# frozen_string_literal: true

w, h, x, y = gets.split.map(&:to_i)

s = w * h / 2.0

flag = if x * 2 == w && y * 2 == h
         1
       else
         0
       end

puts "#{s} #{flag}"
