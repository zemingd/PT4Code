# -*- coding: utf-8 -*-
ii = gets.chomp.split(" ")
n = ii[0].to_i
m = ii[1].to_i
a = gets.chomp.split(" ").map(&:to_i)
ans=1
for i in 0..m-1
  ans = ans*a[i]
end
for i in m..n-1
  x=ans
  x=x/a[i-m]
  x=x*a[i]
  if ans<x
    puts "Yes"
  else
    puts "No"
  end
  ans=x
end
