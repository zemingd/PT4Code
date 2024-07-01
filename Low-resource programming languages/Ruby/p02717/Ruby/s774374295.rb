# frozen_string_literal: true

ary = gets.split.map(&:to_i)
temp = ary[1]
ary[1] = ary[0]
ary[0] = temp

temp = ary[2]
ary[2] = ary[0]
ary[0] = temp

puts "#{ary[0]} #{ary[1]} #{ary[2]}"
