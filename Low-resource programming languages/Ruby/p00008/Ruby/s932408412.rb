v=Array.new(50,0)
10.times do |i|
	10.times do |j|
		10.times do |k|
			10.times do |l|
				v[i+j+k+l]+=1
			end
		end
	end
end

while n=gets.to_i
	puts v[n]
end