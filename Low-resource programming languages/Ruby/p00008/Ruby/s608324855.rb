while n=gets.to_i
	count=0
	
	a=0
	
	
	if n<0 || n>36
		puts "0"
		next
	elsif n== nil 
		break
	end



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