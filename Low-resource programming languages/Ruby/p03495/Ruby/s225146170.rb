n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
h=Hash.new(0)
a.each{|v|h[v]+=1}
sorted_num=h.values.sort
size=sorted_num.size
if size<=k
  puts k-size
else
  puts sorted_num.take(size-k).inject(:+)
end