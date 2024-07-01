n=gets.to_i
word_arr=Array.new(n)
word_arr[0]=gets.chomp
flag=true
arr=word_arr[0].chomp.split("")
word1=arr[arr.size-1].chomp
for i in 1..n-1
	word=gets.chomp
	arr=word.chomp.split("")
	word2=arr[0].chomp
	if word_arr.index(word)!=nil or word1 !=word2
		flag=false
		break
	end
	word1=arr[arr.size-1]
	word_arr[i]=word
end
print (flag ? 'Yes': 'No')