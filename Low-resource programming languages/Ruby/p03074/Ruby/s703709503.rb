io = STDIN
n,k=io.gets.split.map(&:to_i)
s=io.gets.chomp
units= s.each_char.chunk_while{|x,y|x==y}.map{|ar|[ar[0],ar.size]}
rui=[]
units.inject(0){|tot,x|rui<<tot+x[1];tot+x[1]}
units.unshift(["1",0]) if units[0][0]=="0"
units.push(["1",0]) if units[-1][0]=="0"
#(units.size-1)/2 :0の数
#((units.size-1)/2-k+1) :try数
ans=unit_sum=units[0..(2*k)].inject(0){|tot,unit|tot+unit[1]}
((units.size-1)/2-k+1).times do |i|
  true
  unit_sum=unit_sum-units[i][1]-units[i+1][1]+units[i+2*k][1]+units[i+2*k+1][1]
  ans=[unit_sum,ans].max
  true
end
puts ans
