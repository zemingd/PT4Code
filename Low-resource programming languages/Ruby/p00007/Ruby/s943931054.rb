#!/usr/local/bin/ruby
n=gets.to_i
x=100000
n.times{
   x=x+x*0.05
   if x%1000!=0
      x=x+1000
   end
}
puts"#{x}"