n = gets.to_i
s = gets.chomp.chars

w = Array.new(n,0)
b = Array.new(n,0)
ans=Array.new
(1...n).each do |i|
	b[i]= if (s[i]=='#')
			  b[i-1]+1
		  else
			  b[i-1]
		  end
end
(0...n-1).reverse_each do |i|
	w[i] = if (s[i]=='.')
			   w[i+1]+1
		   else
			   w[i+1]
		   end
end
(0...n).each do |i|
	ans.push(b[i]+w[i])
end

puts ans.min