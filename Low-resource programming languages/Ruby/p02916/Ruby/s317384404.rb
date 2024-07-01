n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i).inject(:+)
c=gets.split.map(&:to_i)
(n-1).times do |i|
  if a[i]+1==a[i+1]
    b+=c[a[i]-1]
  end
end
p b