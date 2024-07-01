# -*- coding: utf-8 -*-

week = gets.chomp.to_i
dept = 100000

def loan i, dept
  return loan i-1, (dept*1.05/1000.0).ceil*1000 if i > 1
  return (dept*1.05/1000.0).ceil*1000
end

puts loan week, dept