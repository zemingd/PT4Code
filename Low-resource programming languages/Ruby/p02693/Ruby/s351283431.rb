k = gets.to_i
 
AB = gets
arrayAB = AB.split(" ")
 
IntA = arrayAB[0].to_i
IntB = arrayAB[1].to_i
 
message = ""
 
for i in IntA..IntB do   
  if i % k ==  0
    message = "OK"
    break
  end
end
 
if message.empty?
	message = "NG"
end
 
puts(message)