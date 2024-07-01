io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
b=[]

n.times do |i|
  b= [a[i]]+b
end
if n.even?
  puts b.join(' ')
else
  puts [[b[0]]+b[1..-1].reverse].join(' ')
end
