io = STDIN
n,m=io.gets.split.map(&:to_i)
x=io.gets.split.map(&:to_i).sort
if n>=m || m==1
  puts 0
else
  mid=x.each_cons(2).map{|i,j|j-i}.sort_by{|i|-i}
  take=mid.take(n-1)
  puts mid.inject(:+)-take.inject(0){|s,x|s+x}
end
