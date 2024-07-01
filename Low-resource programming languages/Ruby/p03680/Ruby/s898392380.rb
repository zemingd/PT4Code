n=gets.chomp.to_i
a=Array.new(n+1) 
for i in 1..n
	a[i]=gets.chomp.to_i
end
x=1
sum=0
n.times{
	x=a[x]
	sum=sum+1
	if x==2
		puts sum
		exit(0)
	end
}
puts -1
