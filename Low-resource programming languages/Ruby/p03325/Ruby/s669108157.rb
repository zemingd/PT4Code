require 'prime'
io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
aa=a.map do |i|
  i.prime_division
end
bb=aa.map{|ar|ar.select{|x,y|x==2}}  #.map{|x,y|y}  }
cnt=0
bb.each do |ar|
  cnt += ar[0][1] unless ar==[]
end
puts cnt