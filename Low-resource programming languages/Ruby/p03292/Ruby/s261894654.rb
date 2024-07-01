require "scanf"

a = gets.scanf("%d%d%d")

a.sort!

p (a[1]-a[0]).abs + (a[2]-a[1]).abs
