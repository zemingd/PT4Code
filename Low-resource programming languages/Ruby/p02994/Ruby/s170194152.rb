N,L=gets.split.map(&:to_i)
sum=0
min=10**10
list=[]
(1..N).each do |i|
  sum += (L+i-1)
  list << (L+i-1)
end
list.sort_by!{|x| (sum - (sum - x)).abs}
p sum - list[0]