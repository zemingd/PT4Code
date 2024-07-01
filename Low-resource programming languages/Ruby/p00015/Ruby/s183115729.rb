 n = gets.to_i
 for i in 1..n
 	array1 = Array.new(50,0)
 	array2 = Array.new(50,0)
 	answer = Array.new(51,0)
 	num1 = gets.reverse.split("")
 	num2 = gets.reverse.split("")
 	if num1.length > num2.length
 		max = num1.length
 	else
 		max = num2.length
 	end
 	for j in 0..(num1.length - 1)
 		array1[j] = num1[j].to_i
 	end
 	for k in 0..(num2.length - 1)
 		array2[k] = num2[k].to_i
 	end
 	for l in 0..(max - 1)
 		if (answer[l] + array1[l] + array2[l]) > 9
 			answer[l] = answer[l] + array1[l] + array2[l] - 10
 			answer[l + 1] += 1
 		else
 			answer[l] = answer[l] + array1[l] + array2[l]
 		end
 	end
 	if answer[max] != 0
 		max += 1
 	end
 	for m in 0..(max - 2)
 		print  answer[max-1-m]
 	end
 	puts ""
 end