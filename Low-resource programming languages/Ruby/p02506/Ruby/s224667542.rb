cnt=0
obj=gets

while(word=gets)
	word.split().each do |i|
		cnt+=1 if (i =~ /#{obj}/i)>=0
	end
end

puts cnt