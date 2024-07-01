_,*w=`dd`.split.map(&:to_i)
min=100
sum=0
all=w.sum
w.each do |wi|
  sum+=wi
  min=[min,(sum-(all-sum)).abs].min
end
p min
