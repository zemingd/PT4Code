n=gets.to_i
a=gets.split.map(&:to_i)
if a.select{|i|i<0}.size.even?
  puts a.map{|i|i>0?i:-i}.inject(:+)
else
  b=a.map{|i|i>0?i:-i}.sort
  b[0]=-b[0]
  puts puts b.inject(:+)
end