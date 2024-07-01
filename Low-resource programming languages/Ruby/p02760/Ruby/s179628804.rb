a1=3.times.map{gets.split.map(&:to_i)}
#puts a1.inspect
a2=a1.flatten
a3=a2.zip(a2.size.times.map{false}).to_h
#puts a3
n=gets.to_i
n.times do
  a3[gets.to_i]=true
end

=begin
r1=[true,true,true,false,false,false,false,false,false]
r2=[true,false,false,true,false,false,true,false,false]
r3=[true,false,false,false,true,false,false,false,true]
r4=[false,true,false,false,true,false,false,true,false]
r5=[false,false,true,false,false,true,false,false,true]
r6=[false,false,false,true,true,true,false,false,false]
r7=[false,false,false,false,false,false,true,true,true]
r8=[false,false,true,false,true,false,true,false,false]
=end
#puts a3
res='No'
hv=a3.values
if hv[0]==true
  res='Yes' if (hv[1]==true && hv[2]==true) || (hv[3]==true && hv[6]==true) || (hv[4]==true && hv[8]==true)
elsif hv[1]==true
  res='Yes' if (hv[4]==true && hv[7]==true)
elsif hv[2]==true
  res='Yes' if (hv[5]==true && hv[8]==true) || (hv[4]==true && hv[6]==true)
elsif hv[3]==true
  res='Yes' if (hv[4]==true && hv[5]==true)
elsif hv[6]==true
  res='Yes' if (hv[7]==true && hv[8]==true)
end
puts res