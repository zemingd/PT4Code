io = STDIN
n,m=io.gets.split.map(&:to_i)
x=io.gets.split.map(&:to_i).sort
if n>=m ||
  n == 1
  puts 0
else
  sp=x.each_cons(2).map{|i,j|j-i}.sort_by{|i|-i}
  puts x.last-x.first-sp.take(n-1).inject(:+)
end
