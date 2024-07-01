N,M= gets.chomp!.split.map(&:to_i)
Citys=[]

for i in 0...M
  Citys[i*2],Citys[i*2+1]= gets.chomp!.split.map(&:to_i)
end

for i in 0...N 
puts Citys.count(i+1)
end