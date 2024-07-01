io = STDIN
n,k=io.gets.split.map(&:to_i)
s=io.gets.chomp
#  n,k=5,1
#  s="00010"
#  n,k=14,2
#  s="11101010110011"

units= s.each_char.chunk_while{|x,y|x==y}.map{|ar|[ar[0],ar.size]}
#start:0
#0101010
#**
# ***
#   ***
#start:1
#1010101
#***
#  ***
#    ***
#end:0
#101010
#***
#  ***
#    **
if units.select{|x,y|x=="0"}.size<=k
  puts n
else
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
end
