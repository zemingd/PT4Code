#! /usr/bin/env ruby

input = STDIN.read.split("\n").map{|l| l.split(" ").map{|i| i.to_i}}

N = input[0][0]
M = input[0][1]

input.shift

prefs = {}
years_city_index = {}

input.each_with_index do |py, i|
  pref = py[0]
  year = py[1]
  years_city_index[year] = i

  if prefs[pref] == nil
    prefs[pref] = []
  end
  prefs[pref].push(year)
end

numbers = []

prefs.each do |pref, years|
  years.sort!
  years.each_with_index do |y, i|
    number = format('%06d', pref) + format('%06d', i + 1)
    city_i = years_city_index[y]
    numbers[city_i] = number
  end
end

numbers.each do |number|
  puts number
end
