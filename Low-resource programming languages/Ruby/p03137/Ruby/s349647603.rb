io = STDIN
n,m=io.gets.split.map(&:to_i)
x=io.gets.split.map(&:to_i).sort
sp=x.each_cons(2).map{|i,j|j-i}.sort[(-n+1)..-1]
ar = x.slice_when do |i,j|
  sp.include?(j-i)
end
puts ar.map{|chunk|chunk[-1]-chunk[0]}.inject(:+)
