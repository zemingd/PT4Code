a,b=gets.split(" ").map(&:to_i)
c=a/1000
d = c.to_s.split("")
temp = d[0]
d[0] = d[1]
d[1] = temp
d=d.join("").to_i
e=a%100

if d >= e
  puts b/100-a/100+1
else
  puts b/100-a/100
end