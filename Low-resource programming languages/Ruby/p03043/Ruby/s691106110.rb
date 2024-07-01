n,k = gets.split.map(&:to_i)
ans = 0.0

n.each do |i|
    div = 1.0/n
    dob = i
    while dob < k do
        dob *= 2
    	div *= 1.0/2
  	end
    ans += div

    
end
 
puts ans