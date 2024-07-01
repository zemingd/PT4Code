n=gets.to_i
a,b,c=(0..2).map{gets.split.map(&:to_i).unshift(0)}
s=b.inject(:+)
2.upto(n){|i|s+=c[a[i-1]] if a[i]==a[i-1]+1}
p s