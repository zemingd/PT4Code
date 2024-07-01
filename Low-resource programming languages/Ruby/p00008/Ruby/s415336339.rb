while n=gets.to_i
	v=[]
	10.times do |i|
		10.times do |j|
			10.times do |k|
				10.times do |l|
					if i+j+k+l==n
						v<<i
						v<<j
						v<<k
						v<<l
					end
				end
			end
		end
	end

	puts (v.length)/4
end