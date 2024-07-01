n=gets.chomp.to_i
ary=Array.new
ary=gets.chomp.split(" ").map{|num| num.to_i}
k=0


for i in 0..n-1
	j=i
	while j>0
		if ary[j] < ary[j-1]
			x=ary[j-1]
			ary[j-1]=ary[j]
			ary[j]=x
			k+=1
		end
		j-=1
	end
end
puts ary.join(" ")
puts k