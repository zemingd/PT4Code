n = gets.to_i
a = gets.split
s = 0

n=n-1
while n>=0
	if(a[n]="Y")
		s=s+1
	end　
	n = n-1
end

if s==0 then
	puts("Three")
end 

if s>0 then
	puts("Four")
end
