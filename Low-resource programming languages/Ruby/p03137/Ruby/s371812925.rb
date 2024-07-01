io = STDIN
n,m=io.gets.split.map(&:to_i)
x=io.gets.split.map(&:to_i).sort
if n>=m ||
  n == 1
  puts 0
else
sp=x.each_cons(2).map{|i,j|j-i}.sort_by{|i|-i}
  xx=x.slice_when{|i,j|j-i>=sp[n-2]}.to_a
  xx.reject!{|a|a.size<=1}
  puts xx.map{|a|a.last-a.first}.inject(:+)
end
