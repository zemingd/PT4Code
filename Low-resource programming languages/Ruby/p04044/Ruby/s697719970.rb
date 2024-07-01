n=gets().chomp().split(" ")
i=0
a=Array.new(0)
while(i<n[0].to_i)
	a<<gets().chomp()
	i+=1
end
a=a.sort{|a1,a2|
a1<=>a2
}
i=0
while(i<n[0].to_i)
	print(a[i])
	i+=1
end
print("\n")
