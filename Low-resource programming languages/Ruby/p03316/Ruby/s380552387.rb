n=gets.chomp.to_i
s=0
for i in 0..9 do
	s+=(n/10**i)%10
end
if n%s==0 then
	puts("Yes")
else
	puts("No")
end
