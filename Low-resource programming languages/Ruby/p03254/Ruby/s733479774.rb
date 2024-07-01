i , max = gets.chomp.split(" ").map(&:to_i)
array = gets.chomp.split(" ").map(&:to_i).sort
count =0
(0..i-1).each do |n|
    if max<array[n] 
       break
    end
    if n == array.length-1 && max > array[n]
        break
    end
      p max = max - array[n]
     count += 1
end
puts count