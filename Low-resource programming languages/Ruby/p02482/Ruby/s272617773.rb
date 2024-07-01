#!/usr/local/bin/ruby
line = gets
arr = line.split(" ")
a = arr[0].to_i
b = arr[1].to_i
if a < b
 puts("a < b")
else
 if a > b
  puts("a > b")
 else
  puts("a == b")
 end
end