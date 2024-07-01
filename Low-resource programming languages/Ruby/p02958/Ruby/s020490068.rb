n=gets.to_i
a=gets.split.map(&:to_i)
x=0
0.upto(n-1){|i|x+=1 if a[i]!=i+1;(puts "NO";exit)if x>2}
puts "YES"