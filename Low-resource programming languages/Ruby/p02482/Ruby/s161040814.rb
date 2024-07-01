#!/usr/local/bin/ruby
line=gets
rec=line.split(" ") 
x=rec[0].to_i 
y=rec[1].to_i

def big(a,b)
  if a<b
   ans= "a<b"
     elsif a>b
   ans= "a>b"
    else
   ans= "a==b"
   end
return ans
end

puts "#{big(x,y)}"