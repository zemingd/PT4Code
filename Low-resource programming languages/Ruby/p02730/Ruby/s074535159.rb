s=gets.chomp
n=s.size
a=(n-1)/2
b=(n+3)/2
if s==s.reverse
  if s[0..a-1]==s[0..a-1].reverse
  	if s[(b-1)..(n-1)] == s[(b-1)..(n-1)].reverse
    	puts "Yes"
  	end
else
  	puts "No"
end
