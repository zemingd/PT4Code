# -*- coding: utf-8 -*-

week = gets.chomp.to_i
dept = 100000

def loan i, dept
  return loan i-1, dept*1.05 if i > 1
  return dept*1.05
end

a = loan week.to_i, dept

puts a.round(-4)