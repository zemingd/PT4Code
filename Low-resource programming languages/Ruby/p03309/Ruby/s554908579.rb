io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
sum=a.inject(:+)
ar= a.map.with_index(1){|x,i|x-i}
max=ar.max
min=ar.min

ans=Float::INFINITY
 mid1=((sum).to_f/n).ceil
 mid2=((sum).to_f/n).floor
[min,mid1,mid2,max].each do |b|
  abs=ar.map{|i|(i-b).abs}.inject(:+)
  ans=[abs,ans].min
end
puts ans
