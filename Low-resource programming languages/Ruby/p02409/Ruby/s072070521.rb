house = Array.new(4){Array.new(3){Array.new(10,0)}}

count = gets.to_i

for i in 1..count do
	info = gets
	b,f,r,v = info.split(" ").map(&:to_i)
	house[b-1][f-1][r-1] = v
end

for i in 0..3 do
	for j in 0..2 do
		for k in 0..9 do
			print " " , house[i][j][k] 
		end
		print "\n"
	end 
		if i < 3 then
	    	puts "####################"
	    end
end