 io = STDIN
 n,k=io.gets.split.map(&:to_i)
 s=io.gets.chomp
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
units.unshift(["1",0]) if units[0][0]=="0"
units.push(["1",0]) if units[-1][0]=="0"
units.map!{|x,y|y}
#(units.size-1)/2 :0の数
#((units.size-1)/2-k) :try数
ans=unit_sum=units[0..(2*k)].inject(:+)
((units.size-1)/2-k).times do |i|
  true
  unit_sum=unit_sum-units[i]-units[i+1]+units[i+2*k+1]+units[i+2*k+2]
  ans=[unit_sum,ans].max
  true
end
puts ans