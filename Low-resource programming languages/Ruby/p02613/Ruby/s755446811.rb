#!/usr/bin/env ruby

N = gets.chomp.to_i

ac = 0
wa = 0
tle = 0
re = 0

N.times do
  case gets.chomp
  when 'AC' then ac += 1
  when 'WA' then wa += 1
  when 'TLE' then tle += 1
  when 'RE' then re += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
