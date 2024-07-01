#!/bin/ruby


year, month, day = gets.chomp.split("/").map(&:to_i)

if year < 2019
  puts "Heisei"
elsif year >= 2020
  puts "TBD"
elsif year == 2019
  if month >= 5
    puts "TBD"
  else
    puts "Heisei"
  end
end
