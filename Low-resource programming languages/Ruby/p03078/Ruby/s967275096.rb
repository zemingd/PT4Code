io = STDIN
x,y,z,k=io.gets.split.map(&:to_i)
max=[x,y,z].max
a=io.gets.split.map(&:to_i).sort.reverse+Array.new(5+max-x,0)
b=io.gets.split.map(&:to_i).sort.reverse+Array.new(5+max-y,0)
c=io.gets.split.map(&:to_i).sort.reverse+Array.new(5+max-z,0)
am,bm,cm=[],[],[]
am << a.shift
bm << b.shift
cm << c.shift
(am << a.shift) if a[0]>0
(bm << b.shift) if b[0]>0
(cm << c.shift) if b[0]>0
3000.times do |i|
  if a[0]>0 && a[0]>=b[0] && a[0]>=c[0]
    am<<a.shift
  elsif b[0]>0 && b[0]>=a[0] && b[0]>=c[0]
    bm<<b.shift
  elsif c[0]>0 && c[0]>=a[0] && c[0]>=b[0]
    cm<<c.shift
  else
    break
  end
  break if a.size==1 && b.size==1 && c.size==1
end
ar=[]
am.each do |i|
bm.each do |j|
cm.each do |k|
  ar << i+j+k
end
end
end
puts ar.sort.reverse[0...k]
