# -*- coding: utf-8 -*-
a, b = STDIN.gets.split.map(&:to_i)

d = a / b
r = a % b
f = a / b.to_f

$, = " "
$\ = " \n"
print d, r, sprintf("%.5f",f)