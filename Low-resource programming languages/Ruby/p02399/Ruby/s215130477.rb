a, b = STDIN.gets.split.map(&:to_i)
d = a/b# -*- coding: utf-8 -*-
# ab.rb
a, b = STDIN.gets.split.map(&:to_i)
d = a/b
r = a%b
f = a/b.to_f
puts sprintf("%d %d %.5f",d,r,f)