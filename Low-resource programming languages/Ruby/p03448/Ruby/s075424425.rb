#!/usr/bin/env ruby

a, b, c, x = readlines.map { |v| v.strip.to_i }

cnt = 0
(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      cnt += 1 if (500 * i + 100 * j + 50 * k) === x
    end
  end
end
puts cnt