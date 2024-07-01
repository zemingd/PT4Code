#!/usr/bin/ruby
#encoding: utf-8

n = gets.to_i

ps = n.times.map{|i|
  s,p = gets.chomp.split
  [s,-p.to_i,i+1]
}
# ps は各要素が[s,-p.to_i,i+1]の二次元配列となる。

ps.sort! 
#p ps 

#ps.each{|_,_,i| p i}

(0..ps.size-1).each do |i|
  puts ps[i][2]
end
