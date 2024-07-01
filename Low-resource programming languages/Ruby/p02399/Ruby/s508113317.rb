# -*- coding: utf-8 -*-
# ab.rb
a, b = STDIN.gets.split.map(&:to_i)
d = a/b
r = a%b
f = a/b.to_f
print d," ",r," ",f,"\n"