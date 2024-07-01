i = gets.to_i
sum = 0
count =0

(1..i).each do |n|
    if n %2 ==0
        next
    end
    (1..n).each do |k|
        
        if n%k == 0
            count +=1
          if count == 8
            sum +=1
           next 
          end
        end
    end
    count=0
end
puts sum