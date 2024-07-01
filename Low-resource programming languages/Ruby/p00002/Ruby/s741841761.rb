#!/usr/local/bin/ruby
while line=gets
   rec=line.split(" ").map(&:to_i)
   x,y=rec[0],rec[1]
   ans = x + y
   puts ans.to_s.length
end