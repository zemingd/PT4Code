cnt=0
obj=gets

while(word=gets)
	word.split().each do |i|
		cnt+=1 if(/#{obj}/i===i)
end

puts cnt