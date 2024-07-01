# -*- coding: utf-8 -*-
while line = gets
  a, b = line.chomp.split(" ").map{|item| item.to_i}
  puts (a+b).to_s.size
end