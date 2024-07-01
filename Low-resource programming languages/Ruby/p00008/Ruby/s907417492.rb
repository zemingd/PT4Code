while n=gets
	n=n.to_i
	count=0
	
	a=0
	
	while a < 10
	b=0
		while b < 10
	c=0
			while c < 10
	d=0
				while d < 10
					if a+b+c+d == n
						count += 1
#						puts "#{a} #{b} #{c} #{d} #{count}"
					end
					d+=1
				end
				c+=1
			end
			b+=1
		end
		a+=1
	end
	puts count
end