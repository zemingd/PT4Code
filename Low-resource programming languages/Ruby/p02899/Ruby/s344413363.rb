require 'pp'

n = gets.to_i

a = gets.split.map.with_index(1){|x,i| [x.to_i, i]}

puts a.sort_by{ |aa| aa[0] }.map{|aa|aa[1]}.join(" ")
