n=gets.chomp.to_i
ary=Array.new
ary=gets.chomp.split(" ").map{|num| num.to_i}
k=0
i=n-1
while i>=0
	for j in i+1..n-1
		if ary[j] < ary[j-1]
			x=ary[j-1]
			ary[j-1]=ary[j]
			ary[j]=x
			k+=1
		end
	end
	i-=1
end
puts ary.join(" ")
puts k