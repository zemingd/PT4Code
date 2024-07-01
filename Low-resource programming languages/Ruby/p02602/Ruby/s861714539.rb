# -*- coding: utf-8 -*-
ii = gets.chomp.split(" ")
n = ii[0].to_i
m = ii[1].to_i
a = gets.chomp.split(" ")
ans=1
for i in 0..m-1
  ans = ans*a[i].to_i
end
for i in m..n-1
  x=ans
  x=x/a[i-m].to_i
  x=x*a[i].to_i
  if ans<x
    puts "Yes"
  else
    puts "No"
  end
  ans=x
end