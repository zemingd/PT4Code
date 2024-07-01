#!/usr/local/bin/ruby
n=gets.to_i
n.times{
x1,y1,x2,y2,x3,y3,x4,y4=gets.split.map(&:to_f)
ab=(y2-y1)/(x2-x1)
cd=(y4-y3)/(x4-x3)
  if ab==cd
    puts"YES"
  else 
    puts"NO"
  end  
}