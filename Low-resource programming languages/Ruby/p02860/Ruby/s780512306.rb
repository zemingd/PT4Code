N = gets.to_i

Q = gets.to_s
arry = Q.split('')

if N % 2 == 1
	puts "No"
else
	arry1 = arry[0 ... (N/2)]
    arry2 = arry[N/2 ... -1]
	  if  arry1 == arry2
	  	puts 'Yes'
	  else
	  	puts 'No'
	  end
end