

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

rui=[]
ruiura=[]

rui[0]=a[0]
(0..n-2).each do |i|
	rui[i+1]=rui[i].gcd(a[i+1])
end

ruiura[n-1]=a[n-1]
(0..n-2).reverse_each do |i|
	ruiura[i]=ruiura[i+1].gcd(a[i])
end

maxval=0
(0..n-1).each do |i|
	ruiindex=i-1
	ruiuraindex=i+1
	if ruiindex<0
		ruival=a[n-1]
	else
		ruival=rui[ruiindex]
	end

	if ruiuraindex>n-1
		ruiuraval=a[0]
	else
		ruiuraval=ruiura[ruiuraindex]
	end

	tmp=ruival.gcd(ruiuraval)
	if maxval<tmp
		maxval=tmp
	end
end

puts maxval
