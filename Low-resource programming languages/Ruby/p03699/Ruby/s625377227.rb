s = gets.chomp.to_i
arr = []
s.times do
	arr << gets.chomp.to_i
end
b = true
while b do
	if arr.empty?
		sum = 0
		break
	end
	m = arr.min
  sum = arr.inject(:+)
  if sum % 10 == 0
	  arr.each_with_index do |n, i|
	    if n == m
	    	arr.delete_at(i)
	    	break
	    end
	  end
  else
	  b = false
  end
end
puts sum