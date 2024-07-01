prediction = gets() #prediction=”CSS”
true_weather = gets() #true_weather=”CSR”

answer = 0
(0...3).each do |i| #2
    if(prediction[i]==true_weather[i]) #prediction[i]=’S’ ,true_weather[i]=’R’ , false
        answer = answer + 1 #answer = 2
    end
end

puts answer #2
