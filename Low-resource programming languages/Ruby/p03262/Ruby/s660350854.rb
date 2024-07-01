n,X=gets.split.map(&:to_i)
x=gets.split;x.map!{|a|a.to_i};x.sort!
a=[]
for i in x
  a << X - i
end
a.map!{|l|l.abs}.sort!

puts a[0]