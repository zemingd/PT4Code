io = STDIN
n=io.gets.to_i
aa=io.gets.split.map(&:to_i)
sum=aa.inject(:+)
x,y=aa[0],sum-aa[0]
min=Float::INFINITY
if aa.size==2
  min=  x>y ? x-y : y-x
else
  (1...(aa.size-1)).each do |i|
    x+=aa[i]
    y-=aa[i]
    min=[min,  x>y ? x-y : y-x  ].min
  end
end
puts min
