while n=gets
	r=0
	10.times do |a|
		10.times do |b|
			10.times do |c|
				10.times do |d|
					if a+b+c+d==n.to_i
						r+=1
					end
				end
			end
		end
	end
	puts r
end