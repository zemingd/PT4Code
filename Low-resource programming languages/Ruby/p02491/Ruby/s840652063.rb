# -*- encoding: utf-8 -*-
a=gets.split(nil)
print a[0].to_i/a[1].to_i
print " "
print a[0].to_i%a[1].to_i
print " "
f = a[0].to_f/a[1].to_f
print sprintf( "%.8f", f )