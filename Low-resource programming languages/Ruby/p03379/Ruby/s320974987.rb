#!/usr/bin/env ruby

N = gets.chomp.to_i
X = gets.chomp.split(' ').map(&:to_i)

sorted = X.sort

lesser_median = sorted[N / 2 - 1]
greater_median = sorted[N / 2]


if lesser_median == greater_median
  N.times do
    puts lesser_median
  end
  return
end

the_median = (lesser_median + greater_median).to_f / 2

X.each do |x|
  if x < the_median
    puts greater_median
  else
    puts lesser_median
  end
end
