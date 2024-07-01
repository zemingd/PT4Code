n,k = gets.split.map(&:to_i)
 
ans = 0.0
halves = 1.0
n.each do |i|
  dob = i
  if k > i
    while dob*2 < k do
    	halves *= 1/2
  	end
    ans += halves/n
  else
    ans += 1/n
  end
end
 
puts ans