v=[282,348,415,480,540,592,633,660,670]
while n=gets.to_i
	puts 0							 if n<0 || n>36
	n=36-n							 if 27>=n || n<=36
	puts n*(n+1)*(n+2)/6 if n<10
	n=26-n							 if 19>=n || n<=26
	puts v[n]						 if 10>=n || n<=18
end