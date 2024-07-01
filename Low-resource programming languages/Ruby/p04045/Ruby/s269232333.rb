#coding: utf-8
nk=gets().chomp().split(" ")
d=gets().chomp().split(" ")
i=1
f=0
tar=nk[0].to_i
while(i<=tar)
	f=0
	while(f<nk[1].to_i)
		if(((tar % (i*10))/i).to_i == d[f].to_i)
			f=0
			tar+=i
			if(((tar % (i*10))/i).to_i==0)
				tar+=i*10
			end
		end
		f+=1
	end
	i*=10
end
puts(tar)
