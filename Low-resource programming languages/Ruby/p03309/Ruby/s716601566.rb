io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
ar= a.map.with_index(1){|x,i|x-i}
max=ar.max
min=ar.min

ans=Float::INFINITY
(min..max).each do |b|
  abs=ar.map{|i|(i-b).abs}.inject(:+)
  ans=[abs,ans].min
end
puts ans
