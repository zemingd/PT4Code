n = gets.to_i
a = gets.split
s = 0

while n>0
	if(a[n]="Y")
		s=s+1
	end　
	n = n-1
end

if s==0 
	puts("Three")
end 

if s>0
	puts("Four")
end