# frozen_string_literal: true

line = readlines.map(&:chomp)

demon = line[0].split(' ')
escaper = line[1].split(' ')
t = line[2].to_i

distance = (escaper[0].to_i - demon[0].to_i).abs
speed = (demon[1].to_i - escaper[1].to_i)

if t * speed >= distance
  puts 'YES'
else
  puts 'NO'
end
