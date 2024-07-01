

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)


minval=9999999999;
minuscount=0;
(0..n-1).each do |i|
	aaa=a[i]<0 ? -a[i] : a[i]
	if aaa<minval
		minval=aaa
	end
	if a[i]<0 
		minuscount+=1
		a[i]*=-1
	end
end

sumval=a.inject(:+)

if minuscount%2==0
	puts sumval
else
	puts sumval-minval*2
end
