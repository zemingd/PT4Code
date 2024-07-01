a,b=gets.split(" ").map(&:to_i)
c=a/1000
d=b/1000
if c==d
  puts b/100-a/100+1
else
  puts b/100-a/100
end