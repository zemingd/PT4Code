cnt=0
obj=gets

while(word=gets)
	word.split().each do |i|
		unless (i=~/#{obj}/i).nil?
			cnt+=1
		end
	end
end

puts cnt