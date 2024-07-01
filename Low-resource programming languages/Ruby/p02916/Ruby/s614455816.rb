n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)


ary=[]
(0..n-2).each do |i|
  ary << c[a[i]-1] if (a[i+1] - a[i])==1
end

result = b.inject(:+) + ary.inject(:+)
puts result