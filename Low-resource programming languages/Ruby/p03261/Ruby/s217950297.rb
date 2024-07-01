n=gets.to_i
word_arr=Array.new(n)
word_arr[0]=gets.chomp
flag=true
for i in 1..n-1
	word=gets.chomp
	if word_arr.include?(word)
		flag=false
		break
	end
	word_arr[i]=word
end
print (flag ? 'Yes': 'No')
