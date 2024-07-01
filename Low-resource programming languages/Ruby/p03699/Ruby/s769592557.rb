s = gets.chomp.to_i
arr = []
s.times do
	arr << gets.chomp.to_i
end
m = arr.min
b = true
while b do
  sum = arr.inject(:+)
  if sum % 10 == 0
  	ind = 0
	  arr.each_with_index do |n, i|
	    if n == m
	    	ind = i
	    	break
	    end
	  end
	  arr.delete_at(ind)
  else
	  b = false
  end
end
puts sum