n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)

b_sum=b.reduce(:+)
c_sum=a.each_cons(2).select{|x,y| x+1==y }.map{|x,_|c[x-1]}.reduce(:+)

print(b_sum+c_sum)