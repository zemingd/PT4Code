# -*- encoding: utf-8 -*-
require 'scanf'
n = gets.scanf "%d %d"
a = n[0]/n[1]
b = n[0]%n[1]
c = n[0]/n[1].to_f

print "#{a} #{b} #{c}"