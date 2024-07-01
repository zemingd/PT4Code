#!/usr/bin/env ruby

n, m = ARGF.gets.split.map(&:to_i)
table = Array.new(m) { [] }

w = (0...n).map { ARGF.gets.split.map(&:to_i) }
w.sort{|a,b| b[0] - a[0]}.each do |j|
  (0..(m-j[0])).each do |d|
    table[d].push(j)
  end
end
bill = 0
sum = table.reduce(0) do |s,list|
  list.sort! {|a,b| b[1] - a[1]}
#  $stderr.puts "#{list}"
  if list[0]
    bill = list[0][1]
    list[0][1] = 0
  else
    bill = 0
  end
  s + bill
end

puts sum
