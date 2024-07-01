io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
b=[]

n.times do |i|
  b= [a[i]]+b
end
puts b.join(' ')
