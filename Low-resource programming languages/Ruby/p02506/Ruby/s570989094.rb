cnt=0
obj=gets
RegEx = Regexp.new(obj,Regexp::IGNORECASE)

while(word=gets)
	word.split().each do |i|
		cnt+=1 if(RegEx===i)
	end
end

puts cnt