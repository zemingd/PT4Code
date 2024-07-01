#!/usr/local/bin/ruby
while line=gets and rec=line.split(" ")
  x=rec[0].to_i
  y=rec[1].to_i
  if x==0 and y==0 
    break 
  end
  if x > y
    temp=x
    x=y
    y=temp
  end
  puts "#{x} #{y}"
end 