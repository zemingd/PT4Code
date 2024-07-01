#!/usr/bin/ruby
n=gets.to_i
n.times do
  str=gets.chop
  str=str.split(" ").map{|buf| buf.to_f}
  x1=str[0]
  y1=str[1]
  x2=str[2]
  y2=str[3]
  x3=str[4]
  y3=str[5]
  x4=str[6]
  y4=str[7]
  if (y1-y2)/(x1-x2) == (y3-y4)/(x3-x4) then
    puts("YES")
  else
    puts("NO")
  end
end