# -*- coding: utf-8 -*-

w, h, n = gets.split.map(&:to_i)
xe = w
ye = h
xf = 0
yf = 0
n.times do |_|
  # x, y, a
  tmp = gets.split.map(&:to_i)
  if tmp[2] == 1
    xf = tmp[0]
  elsif tmp[2] == 2
    xe = tmp[0]
  elsif tmp[2] == 3
    yf = tmp[1]
  elsif tmp[2] == 4
    ye = tmp[1]
  end
end
if (xe-xf)*(ye-yf) > 0
  puts (xe-xf)*(ye-yf)
else
  puts 0
end
