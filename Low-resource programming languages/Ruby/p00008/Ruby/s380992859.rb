
while tmp=gets
n=tmp.to_i
r=0
10.times{|a|
	10.times{|b|
		10.times{|c|
			10.times{|d|
				if a+b+c+d == n
					r+=1
				end
			}
		}
	}
}	
puts(r)
end