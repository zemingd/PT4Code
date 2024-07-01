n = gets.to_i
kt =[]
kt << gets.chomp
count = 0
(0..n-2).each do |u|
      tk = gets.chomp
       if kt[-1][-1] == tk[0] 
          kt << tk
       if kt.size != kt.uniq.size
           count +=1
           break
       end
    else
        count +=1
       break
    end
end 
puts count == 0 ? "Yes": "No"