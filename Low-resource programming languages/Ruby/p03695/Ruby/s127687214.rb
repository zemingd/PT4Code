#!/usr/bin/env ruby

if $0 == __FILE__
  gets
  ary = gets.split(' ').map &:to_i

  colors = Array.new(8) { 0 }
  any = 0

  ary.each do |i|
    if    i <= 399
      colors[0] = 1
    elsif i <= 799
      colors[1] = 1
    elsif i <= 1199
      colors[2] = 1
    elsif i <= 1599
      colors[3] = 1
    elsif i <= 1999
      colors[4] = 1
    elsif i <= 2399
      colors[5] = 1
    elsif i <= 2799
      colors[6] = 1
    elsif i <= 3199
      colors[7] = 1
    else
      any += 1
    end
  end

  min = colors.inject(&:+)
  max = min + any
  max = 8 if max > 8

  puts "#{min} #{max}"
end
