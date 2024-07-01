h,w = gets.split.map(&:to_i);
s = Array.new

h.times do
	s << gets
end

for i in 0..(h-1)
	for j in 0..(w-1)
		if s[i][j] == "#"
 			if i == 0
 				if j == 0
 					unless s[i+1][j] == "#" or s[i][j+1] == "#"
 						puts "No"
 						exit
 					end
 				elsif j == (w-1)
 					unless s[i+1][j] == "#" or s[i][j-1] == "#"
 						puts "No"
 						exit
 					end	
 				else
 					unless s[i+1][j] == "#" or s[i][j+1] == "#" or s[i][j-1] == "#"
 						puts "No"
 						exit
 					end
 				end
 			elsif j == 0
 				if i == (h-1)
 					unless s[i-1][j] == "#" or s[i][j+1] == "#"
 						puts "No"
 						exit
 					end	
 				else
 					unless s[i-1][j] == "#" or s[i][j+1] == "#" or s[i+1][j] == "#"
 						puts "No"
 						exit
 					end	
 				end
 			elsif i == (h-1)
 				if j = (w-1)
 					unless s[i-1][j] == "#" or s[i][j-1] == "#"
 						puts "No"
 						exit
 					end
 				else
 					unless s[i-1][j] == "#" or s[i][j-1] == "#" or s[i][j+1] == "#"
 						puts "No"
 						exit
 					end		
 				end	
 			elsif j = (w-1)
 				unless s[i-1][j] == "#" or s[i][j-1] == "#" or s[i+1][j] == "#"
 					puts "No"
 					exit
 				end					
 			else
 				unless s[i+1][j] == "#" or s[i][j+1] == "#" or s[i-1][j] == "#" or s[i][j-1] == "#"
 					puts "No"
 					exit
				end					
			end
		end
	end
end
				
puts "Yes"