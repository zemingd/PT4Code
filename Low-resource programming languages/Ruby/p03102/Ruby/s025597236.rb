n,m,c=gets.chomp.split(" ").map{|a| a.to_i}
b=gets.chomp.split(" ").map{|a| a.to_i}
a=[]
count=0
0.upto(n-1) do |i|
  total=0
  a=gets.chomp.split(" ").map{|a| a.to_i}
  0.upto(m-1) do |j|
    total+=b[j]*a[j]
  end
  count+=1 if total+c>0
end
puts count