cnt=0
obj=gets
RegEx = Regexp.new(obj,Regexp::IGNORECASE)

while (word=gets)!="END_OF_TEXT"
	word.split().each do |i|
		cnt+=1 if RegEx===i
	end
end

print cnt