a,b,c=gets.split.map(&:to_i);div=[]
c.times{|i|div<< i+1 if(c%(i+1))==0}
puts div.delete_if{|i|i<a||b<i}.size
