n=gets.chomp.to_i
t,a=gets.chomp.split.map(&:to_i)
h=gets.split.map(&:to_i)
tmp=[]
for x in 1..n
  tmp[x-1]=(t-h[x-1]*0.006-a).abs
end
puts tmp.index(tmp.min)+1
