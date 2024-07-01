cnt=0
RegEx = Regexp.new(obj=gets,Regexp::IGNORECASE)

while(word=gets)
	word.split().each do |i|
		cnt+=1 if(RegEx===i)
	end
end

puts cnt