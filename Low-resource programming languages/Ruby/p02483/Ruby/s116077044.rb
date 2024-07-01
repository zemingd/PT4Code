#!/usr/local/bin/ruby
line = gets
arr = line.split(" ").map{|x| x.to_i}
arr.sort!
printf("%d %d %d\n",arr[0],arr[1],arr[2])