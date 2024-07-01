require "pp"

n = gets.to_i
s = []
n.times {s.push(gets.chomp)}

puts s.map{|str| str.split("").sort.join}
.sort
.group_by{|item| item}
.map{|k,v| v.size}
.map{|n| n * (n-1) / 2}
.inject(:+)