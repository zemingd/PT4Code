N = gets.to_i
a = gets.split.map(&:to_i) 
a.sort!
ans = a[0]
a.each do |t|
  if ans == t
  else
  	b = t % a[0]
  	if b == 0
  	else
    	if b < ans
      		ans = b
    	end
  	end
  end
end
 
puts ans