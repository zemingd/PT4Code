while input=gets
	n=input.to_i
	count=0
	10.times{|i|
		10.times{|j|
			10.times{|k|
				10.times{|l|
					count+=1 if i+j+k+l==n
				}
			}
		}
	}
	p count
end
