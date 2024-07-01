io = STDIN
n,x=io.gets.split.map(&:to_i)
m=[]
n.times do
  m<<io.gets.to_i
end
min=m.min
sum=m.inject(:+)
puts (x-sum)/min+n
