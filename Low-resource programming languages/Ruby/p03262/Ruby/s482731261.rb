n,X=gets.split.map(&:to_i)
x=gets.split;x.map!{|a|a.to_i};x.sort!
a=[]
for i in x
  a << X - i
end
a.map!{|l|l.abs}.sort!
a.uniq!
if a.count > 1 then
  b=[]
  for i in 1..a.count - 1
      b << a[i] - a[i-1]
  end
  b.sort!
  puts b[0]
else
  a[0]
  puts a[0]
end