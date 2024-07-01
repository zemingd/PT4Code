n=gets.to_i
a=Array.new(n).fill(0)
b=gets.split(' ').map(&:to_i)
b.each{|i| a[i-1]+=1}
a.each{|i| puts i}