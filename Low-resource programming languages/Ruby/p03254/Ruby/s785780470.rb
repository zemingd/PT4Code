s,l = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i).sort
sum = 0
(0..s-1).each do |n|
    l = l - array[n]
     
    if l<0
        break
    end
    sum +=1
end
puts sum 