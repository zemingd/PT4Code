#!/usr/bin/env ruby

(n, x) = gets.chomp.split(/ /).map(&:to_i)

cities = gets.chomp.split(/ /).map(&:to_i)

def soinsu(num)
  n = num
  soinsu = Array.new
  (2..n).each do |i|
    if (num % i == 0)
      soinsu << i
      num /= i
    end
    redo if num % i == 0
  end
  soinsu
end

sabun = Array.new
cities.each do |c|
  sabun << (c - x).abs
end

m = sabun.min
soi = soinsu(m)

res = 1
soi.each do |s|
  sabun2 = []
  sabun.each do |sa|
    if sa % s == 0
      sabun2 << sa / s
    end
  end
  if sabun.size == sabun2.size
    sabun = sabun2
  res *= s
  end
end

puts res