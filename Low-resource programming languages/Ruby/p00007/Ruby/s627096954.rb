#!/usr/bin/ruby
# -*- coding: utf-8 -*-
def ls(n,a)
  if n==0 then
    return a
  else
    return (1.05*ls(n-1,a)/1000.0).ceil*1000
  end
end

n = gets.to_i
x0 = 100000
puts ls(n,x0)