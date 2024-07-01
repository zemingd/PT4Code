s = gets().split("");
check = Array.new(3,0);
for i in 0..2
	if s[i]=="a"
		check[0]+=1;
	elsif s[i]=="b"
		check[1]+=1;
	elsif s[i]=="c"
		check[2]+=1;
	end
end

if check[0]==1 && check[1]==1 && check[2]==1
	puts("Yes");
else
	puts("No");
end