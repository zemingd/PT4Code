n,m=gets.split.map(&:to_i)
x=gets.split.map(&:to_i).sort
y=[]
(m-1).times do |i|
  y[i] = x[i+1] - x[i]
end
y.sort!.reverse!
if n < m
  p y[n-1..-1].inject(:+)
else
  p 0
end
