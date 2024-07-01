N,M=gets.split.map(&:to_i)
H=gets.split.map(&:to_i)
J=N.times.map{[]}
M.times{
  a,b=gets.split.map(&:to_i)
  J[a-1]<<H[b-1]
  J[b-1]<<H[a-1]
}
c=0
H.each_with_index{|h,i|
  c+=1 if J[i].select{|x|x>=h}.empty?
}
p c