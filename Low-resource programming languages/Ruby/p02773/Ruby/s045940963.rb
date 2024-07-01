n=gets.to_i
max=0
s=Hash.new(0)
n.times do
  s[gets.chomp]+=1
  max=[max,s[$_.chomp]].max
end
ans=[]
s.each do |ss,i|
	ans << ss if i==max
end
puts ans.sort