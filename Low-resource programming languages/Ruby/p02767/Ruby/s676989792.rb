io = STDIN
n=io.gets.to_i
x=io.gets.split.map(&:to_i)
ans=Float::INFINITY
((x.min)..(x.max)).each do |i|
  ii = x.map{|xx|(xx-i)**2}.inject(:+)
  ans=[ans,ii].min
end
puts ans
