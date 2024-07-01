(n,k)=gets.split.map(&:to_i)
 
r = (1..n).map {|x| (x<k)? 1.0 / ( 2**Math.log2(k.to_f/x).ceil) : 1.0 }.reduce(:+)
print r/n